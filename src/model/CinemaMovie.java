package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class CinemaMovie {

    private String img;
    private String name;
    private String desc;
    private Date premiere;
    private String category;
    private String prodCountry;
    private Integer prodYear;
    private Double imdb;
    private String duration;
    private String actors;
    private Integer id;
    private String type;
    private String director;
    private String comment;

    public CinemaMovie(ResultSet movieData) throws SQLException {

        this.id = movieData.getInt("id");
        this.name = movieData.getString("name");
        this.premiere = movieData.getDate("premiere");
        this.img = movieData.getString("img_src");
        this.category = movieData.getString("category");
        this.prodCountry = movieData.getString("production_country");
        this.prodYear = movieData.getInt("production_year");
        this.desc = movieData.getString("description");
        this.imdb = movieData.getDouble("imdb");
        this.duration = movieData.getString("duration");
        this.actors = movieData.getString("actors");
        this.type = movieData.getString("type");
        this.director = movieData.getString("director");
        this.comment = movieData.getString("comment");


    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Date getPremiere() {
        return premiere;
    }

    public void setPremiere(Date premiere) {
        this.premiere = premiere;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getProdCountry() {
        return prodCountry;
    }

    public void setProdCountry(String prodCountry) {
        this.prodCountry = prodCountry;
    }

    public Integer getProdYear() {
        return prodYear;
    }

    public void setProdYear(Integer prodYear) {
        this.prodYear = prodYear;
    }

    public Double getImdb() {
        return imdb;
    }

    public void setImdb(Double imdb) {
        this.imdb = imdb;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getActors() {
        return actors;
    }

    public void setActors(String actors) {
        this.actors = actors;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
