    package io.fall.model;

    import javax.persistence.Entity;
    import javax.persistence.GeneratedValue;
    import javax.persistence.Id;
    import javax.persistence.Table;

    @Entity
    @Table(name = "userprofile")
    public class UserProfile {
        
        @Id
        @GeneratedValue
        private int id;
        private int theme;
        private String username;
        private String summary;

        UserProfile(){}

        public int getTheme() {
            return theme;
        }

        public void setTheme(int theme) {
            this.theme = theme;
        }

        public String getUserName() {
            return username;
        }

        public void setUserName(String userName) {
            this.username = userName;
        }

        public String getSummary() {
            return summary;
        }

        public void setSummary(String summary) {
            this.summary = summary;
        }   
    }