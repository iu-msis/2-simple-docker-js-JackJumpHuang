  var comments = new Vue({
        el: '#commenttext',
        data: {
          Comments:[{
            id:'',
            commentText:''
          }]
        },
        created() {
            this.fetchUser();
        },
        methods:{
          fetchUser(){
            fetch('api/comments/')
            .then(response => response.json())
            .then(json => {
              this.Comments=json;
              console.log(this.Comments);
            });
          }
          }
        })
