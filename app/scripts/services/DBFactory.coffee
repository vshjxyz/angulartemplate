'use strict';

angular.module('BaseApp.services').service 'DBFactory', () ->
    persistence.store.websql.config(persistence, 'incredibleDB', 'The incredible glasses local DB', 50 * 1024 * 1024)

    # @tables =
    #     Category: persistence.define 'Category',
    #         name: "TEXT"

    persistence.schemaSync()

    @exceptionHandler = (callback) ->
        (result, error) ->
            if error?
                throw "SQLError code #{error.code}: #{error.message}"
            else
                callback.apply @, arguments
