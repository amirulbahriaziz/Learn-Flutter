<?php

class User
{
    private $connection;

    public $userid;
    public $username;

    // WHENEVER THE USER IS CREATED, THE CONSTRUCTOR IS CREATED, JADI DIA PERLUKAN CONNECTION ARGUMENT SKALI,
    public function __construct($connecting)
    {
        $this->connection = $connecting;
    }

    public function insertUsername()
    {
        // NI INSERT STATEMENT
        $statement = "INSERT INTO user SET username=:username";

        // YANG INI QUERY TO PREPARE STATEMENT DALM PDO STYLE
        $query = $this->connection->prepare($statement);

        // YANG NI UNTUK STRIP TAGS, BOLEH KATA MACAM SECURITY LA
        $this->username = htmlspecialchars(strip_tags($this->username));

        // YANG INI BIND PARAMETER :USERNAME TU DGN VARIABLAE USERNAME
        $query->bindParam(":username", $this->username);

        // YANG INI SAH-SAH STATEMENT UNTUK EXECUTE
        if ($query->execute()) {

            // YANG INI DIA AKAN BACA LAST INSERT ID, SO, DIA AKAN INSERT ID SETERUSNYA, NI PENTING KALAU ADA COLUMN YANG GUNA AUTO_INCREMENT
            $this->userid = $this->connection->lastInsertId();
            return true;
        }
    }
}