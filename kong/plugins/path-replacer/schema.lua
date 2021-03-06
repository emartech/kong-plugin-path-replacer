local typedefs = require "kong.db.schema.typedefs"

return {
  name = "path-replacer",
  fields = {
    {
      consumer = typedefs.no_consumer
    },
    {
      config = {
        type = "record",
        fields = {
          { source_header = { type = "string", required = true } },
          { placeholder = { type = "string", required = true } },
          { log_only = { type = "boolean", default = false } },
          { darklaunch_url = { type = "string", default = " " } }
        }
    } }

  }
}
