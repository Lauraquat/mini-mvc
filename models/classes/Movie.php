<?php

namespace models\classes;

use models\MoviesModel;

class Movie
{
    public string $id;
    public string $movies_name;
    public string $movies_date;
    public string $movies_img;
    public string $movies_synopsis;
    public string $movies_ba;
    public string $movies_storie;


    public MoviesModel $moviesModel;

    public function __construct()
    {
        $this->moviesModel = new MoviesModel();
    }

    public function toString(): string
    {
        return "$this->movies_name, $this->movies_date, $this->movies_img, $this->movies_synopsis, $this->movies_ba, $this->movies_storie";
    }

    /**
     * @return string
     */
    public function getId(): string
    {
        return $this->id;
    }

    /**
     * @param string $id
     */
    public function setId(string $id): void
    {
        $this->id = $id;
    }

    /**
     * @return string
     */
    public function getMovies_name(): string
    {
        return $this->movies_name;
    }

    /**
     * @param string $movies_name
     */
    public function setMovies_name(string $movies_name): void
    {
        $this->movies_name = $movies_name;
    }

    /**
     * @return string
     */
    public function getMovies_date(): string
    {
        return $this->movies_date;
    }

    /**
     * @param string $movies_date
     */
    public function setMovies_date(string $movies_date): void
    {
        $this->movies_date = $movies_date;
    }

    /**
     * @return string
     */
    public function getMovies_img(): string
    {
        return $this->movies_img;
    }

    /**
     * @param string $movies_img
     */
    public function setMovies_img(string $movies_img): void
    {
        $this->movies_img = $movies_img;
    }

    /**
     * @return string
     */
    public function getMovies_synopsis(): string
    {
        return $this->movies_synopsis;
    }

    /**
     * @param string $movies_synopsis
     */
    public function setMovies_synopsis(string $movies_synopsis): void
    {
        $this->movies_synopsis = $movies_synopsis;
    }

    /**
     * @return string
     */
    public function getMovies_ba(): string
    {
        return $this->movies_ba;
    }

    /**
     * @param string $movies_ba
     */
    public function setMovies_ba(string $movies_ba): void
    {
        $this->movies_ba = $movies_ba;
    }

    /**
     * @return string
     */
    public function getMovies_storie(): string
    {
        return $this->movies_storie;
    }

    /**
     * @param string $movies_storie
     */
    public function setMovies_storie(string $movies_storie): void
    {
        $this->movies_storie = $movies_storie;
    }

}