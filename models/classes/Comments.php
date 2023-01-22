<?php
namespace models\classes;

class Comments
{
    private int $id;
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