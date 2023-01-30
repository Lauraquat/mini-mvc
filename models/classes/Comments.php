<?php
namespace models\classes;

class Comments
{
    private int $id;
    private string $pseudo;
    private int $movies_id;
    private int $users_id;
    private string $commentaires;
    private string $comments_date;

    function __construct()
    {
    }

    /**
     * @return int
     */
    public function getId(): string
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
    public function getPseudo(): string
    {
        return $this->pseudo;
    }

    /**
     * @param string $pseudo
     */
    public function setPseudo(string $pseudo): void
    {
        $this->pseudo = $pseudo;
    }

    
    /**
     * @return int
     */
    public function getMovies_id(): string
    {
        return $this->movies_id;
    }

    /**
     * @param int $movies_id
     */
    public function setMovies_id(int $movies_id): void
    {
        $this->movies_id = $movies_id;
    }

    
    /**
     * @return int
     */
    public function getUsers_id(): string
    {
        return $this->users_id;
    }

    /**
     * @param int $users_id
     */
    public function setUsers_id(int $users_id): void
    {
        $this->users_id = $users_id;
    }

    /**
     * @return string
     */
    public function getCommentaires(): string
    {
        return $this->commentaires;
    }

    /**
     * @param string $commentaires
     */
    public function setCommentaires(string $commentaires): void
    {
        $this->commentaires = $commentaires;
    }

    /**
     * @return string
     */
    public function getCommentsDate(): string
    {
        return $this->comments_date;
    }

    /**
     * @param string $comments_date
     */
    public function setCommentsDate(string $comments_date): void
    {
        $this->comments_date = $comments_date;
    }
}