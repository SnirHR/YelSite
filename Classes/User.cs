using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace YelSite.Classes
{
    public class User
    {
        public int Id { get; set; }
        public string Username { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Role { get; set; }
        public string Gender { get; set; }
        public string Country { get; set; }
        public string Language { get; set; }
        public string EducationalBackground { get; set; }
        public string Phone { get; set; }

        public string Birthday { get; set; }
        public User(string username,string firstName, string lastName, string email, string password,int id, string role, string gender, string country, string language, string educationalBackground,string phone, string birthday)
        {
            this.Username = username;
            this.FirstName = firstName;
            this.LastName = lastName;
            this.Email = email;
            this.Password = password;
            this.Id = id;
            this.Role = role;
            this.Gender = gender;
            this.Country = country;
            this.Language = language;
            this.EducationalBackground = educationalBackground;
            this.Phone = phone;
            this.Birthday = birthday;
        }
    }
}