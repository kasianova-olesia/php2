<?php
namespace app\services\renderers;

class TemplateRenderer implements IRenderer
{
    public function render($template, $params)
    {
        extract($params);
        ob_start();
        $templatePath = ROOT_DIR . "/views/{$template}.php";
        include $templatePath;
        return ob_get_clean();
    }
} 