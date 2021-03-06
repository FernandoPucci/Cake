<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Autore $autore
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List Autores'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Livros'), ['controller' => 'Livros', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Livro'), ['controller' => 'Livros', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="autores form large-9 medium-8 columns content">
    <?= $this->Form->create($autore) ?>
    <fieldset>
        <legend><?= __('Add Autore') ?></legend>
        <?php
            echo $this->Form->control('nome');
            echo $this->Form->control('livros._ids', ['options' => $livros]);
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
