<template>
    <div class="main">
        <div class="user-photo">Photo Box</div>
        <div class="user-info">
            <h1 id="user-name"> {{ user.name }}</h1>
            <h3 id="last-active">Last activity date</h3>
            <h3 id="birthday">Birthday</h3>

        </div>    
    </div>
</template>

<script>
// import { useRouter } from 'vue-router'
// import { useAuthStore } from '../stores/auth';
// const user = useAuthStore.state.user
// import { ref } from 'vue'

export default {
    name: 'BioCard',
    props: {
        name: String
    }
}



</script>

<style>
.main {
    margin: 2px;
    border: 3px solid orange;
    display: flex;
    flex-flow: row wrap;
}
.user-photo {
    border: 1px black solid;
    margin: 2px;
    flex: 1;
    max-width: 400px;
}
.user-info {
    border: 1px solid grey;
    margin: 2px;
    flex: 2;
}
#user-name {
    border: 1px solid grey;
    margin: 2px;
    text-align: left;
}
</style>