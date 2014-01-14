var SongSearch = Backbone.Collection.extend({
    model: Song,
    initialize : function(models, options){
        this.query = options.query;
    },
    url: function(){
        return "http://localhost:3000/songs/search?query="+this.query;
    }
});
