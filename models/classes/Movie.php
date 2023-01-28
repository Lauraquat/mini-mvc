<?php

namespace models\classes;

use models\ActorsModel;
use models\CommentsModel;
use models\ImagesModel;


class Movie
{
    public int $id;
    public string $name;
    public string $date;
    public string $img;
    public string $synopsis;
    public string $ba;
    public string $story;
    public ActorsModel $actorsModel;
    public CommentsModel $commentsModel;
    public ImagesModel $imagesModel;


    public function __construct()
    {
        $this->actorsModel = new ActorsModel();
        $this->imagesModel = new ImagesModel();
        $this->commentsModel = new CommentsModel();
    }


    public function listOfActors(): array {
        return $this->actorsModel->getActorsByMovie($this->id);
    }    
    
    public function imagesOfMovie(): array {
        return $this->imagesModel->getImagesByMovie($this->id);
    }

    public function commentsOfMovie(): array{
        return $this->commentsModel->getCommentsByMovie($this->id);
    }


    public function toString(): string
    {
        return "$this->name, $this->date, $this->img, $this->synopsis, $this->ba, $this->story";
    }

    /**
     * @return 
     */
    public function getId(): int
    {
        return $this->id;
    }

    /**
     * @param int $id
     */
    public function setId(int $id): void
    {
        $this->id = $id;
    }

    /**
     * @return string
     */
    public function getName(): string
    {
        return $this->name;
    }

    /**
     * @param string $name
     */
    public function setName(string $name): void
    {
        $this->name = $name;
    }

    /**
     * @return 
     */
    public function getDate(): string
    {
        return $this->date;
    }

    /**
     * @param $date
     */
    public function setDate(string $date): void
    {
        $this->date = $date;
    }

    /**
     * @return string
     */
    public function getImg(): string
    {
        return $this->img;
    }

    /**
     * @param string $img
     */
    public function setImg(string $img): void
    {
        $this->img = $img;
    }

    /**
     * @return string
     */
    public function getSynopsis(): string
    {
        return $this->synopsis;
    }

    /**
     * @param string $synopsis
     */
    public function setSynopsis(string $synopsis): void
    {
        $this->synopsis = $synopsis;
    }

    /**
     * @return string
     */
    public function getBa(): string
    {
        return $this->ba;
    }

    /**
     * @param string $ba
     */
    public function setBa(string $ba): void
    {
        $this->ba = $ba;
    }

    /**
     * @return string
     */
    public function getStory(): string
    {
        return $this->story;
    }

    /**
     * @param string $story
     */
    public function setStory(string $story): void
    {
        $this->story = $story;
    }

}