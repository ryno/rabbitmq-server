## This Source Code Form is subject to the terms of the Mozilla Public
## License, v. 2.0. If a copy of the MPL was not distributed with this
## file, You can obtain one at https://mozilla.org/MPL/2.0/.
##
## Copyright (c) 2007-2025 Broadcom. All Rights Reserved. The term “Broadcom” refers to Broadcom Inc. and/or its subsidiaries.  All rights reserved.

defmodule RabbitMQ.CLI.Ctl.Commands.DeleteVhostCommand do
  alias RabbitMQ.CLI.Core.{DocGuide, Helpers, ExitCodes}

  @behaviour RabbitMQ.CLI.CommandBehaviour

  @protected_from_deletion_err "Cannot delete this virtual host: it is protected from deletion. To lift the protection, inspect and update its metadata"

  use RabbitMQ.CLI.Core.MergesNoDefaults
  use RabbitMQ.CLI.Core.AcceptsOnePositionalArgument
  use RabbitMQ.CLI.Core.RequiresRabbitAppRunning

  def run([arg], %{node: node_name}) do
    :rabbit_misc.rpc_call(node_name, :rabbit_vhost, :delete, [arg, Helpers.cli_acting_user()])
  end

  def output({:error, :protected_from_deletion}, %{formatter: "json", node: node_name}) do
    {:error,
     %{"result" => "error", "node" => node_name, "reason" => @protected_from_deletion_err}}
  end

  def output({:error, :protected_from_deletion}, _opts) do
    {:error, ExitCodes.exit_dataerr(), @protected_from_deletion_err}
  end

  use RabbitMQ.CLI.DefaultOutput

  def usage, do: "delete_vhost <vhost>"

  def usage_additional() do
    [
      ["<vhost>", "Name of the virtual host to delete."]
    ]
  end

  def usage_doc_guides() do
    [
      DocGuide.virtual_hosts()
    ]
  end

  def help_section(), do: :virtual_hosts

  def description(), do: "Deletes a virtual host"

  def banner([arg], _), do: "Deleting vhost \"#{arg}\" ..."
end
