exports.definition = {

    config : {
        "columns" : {
            "name" : "TEXT",
            "captured" : "integer",
            "url" : "TEXT",
            "capturedLat" : "real",
            "capturedLong" : "real"
        },
        "defaults" : {
            "name" : "",
            "captured" : 0,
            "url" : "",
            "capturedLat" : "",
            "capturedLong" : ""
        },
        "adapter" : {
            "type" : "sql",
            "collection_name" : "fugitives"
        }
    },

    extendModel : function(Model) {
        _.extend(Model.prototype, {

        });
        // end extend

        return Model;
    },

    extendCollection : function(Collection) {
        _.extend(Collection.prototype, {

        });
        // end extend

        return Collection;
    }
}