import { LightningElement, track } from 'lwc';

const QUERY_URL = 'https://api.github.com/search/users?q=';
export default class GitProfileApp extends LightningElement {
    @track searchKey = 'Kenny';
    @track profiles;
    @track error;

    handleSearchKey(e) {
        this.searchKey = e.target.value;
        fetch(QUERY_URL + this.searchKey).then(res => {
            if(!res.ok) {
                this.error = res;
            }
            return res.json();
        })
        .then(jsonRes => {
            this.profiles.jsonRes;
        })
        .catch(err => {
            this.error = err;
            this.profiles = undefined;
        });
    }
}