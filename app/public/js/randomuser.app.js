var app = new Vue({
    el: '#maindivabout',
    data: {
        userName:'...',
        userAddress:'...',
        userBday:'...',
        userAge:'...',
        userEmail:'...',
        userPhone:'...',
        userImgLarge:'...',
        userImgThumb:'...',
    },
    created() {
        this.fetchUser();
    },

    methods:{
        fetchUser: function() {
          fetch('https://randomuser.me/api/')
          .then(response => response.json())
          .then(data => {
            var userData = data.results[0];
            console.log(userData);
            this.userName = userData.name.first + " " + userData.name.last;
            this.userAddress = userData.location.street.number + " " + userData.location.street.name + ", " + userData.location.city + ", " + userData.location.state + ", " + userData.location.country + ", " + userData.location.postcode;
            var trimBday = userData.dob.date.split('T');
            this.userBday = trimBday[0];
            this.userAge = userData.dob.age;
            this.userEmail = userData.email;
            this.userImgLarge = userData.picture.large;
            this.userImgThumb = userData.picture.thumbnail;
          })
          .catch((error)=>{
            fetch('./JSON/randomuser.me-sample.json')
            .then(response => response.json())
            .then(data => {
              var userData = data.results[0];
              console.log(userData);
              this.userName = userData.name.first + " " + userData.name.last;
              this.userAddress = userData.location.street.number + " " + userData.location.street.name + ", " + userData.location.city + ", " + userData.location.state + ", " + userData.location.country + ", " + userData.location.postcode;
              this.userBday = userData.dob.date;
              this.userAge = userData.dob.age;
              this.userEmail = userData.email;
              this.userImgLarge = userData.picture.large;
              this.userImgThumb = userData.picture.thumbnail;
            })
          });
        }
      }
    })
