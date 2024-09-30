<?php

use Botble\Base\Forms\FieldOptions\NumberFieldOption;
use Botble\Base\Forms\Fields\NumberField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Gallery\Models\Gallery;
use Botble\Member\Forms\Fronts\Auth\FieldOptions\TextFieldOption;
use Botble\Widget\AbstractWidget;
use Botble\Widget\Forms\WidgetForm;
use Illuminate\Support\Arr;
use Illuminate\Support\Collection;

class GalleriesWidget extends AbstractWidget
{
    public function __construct()
    {
        parent::__construct([
            'name' => __('Galleries'),
            'description' => __('Galleries Widget'),
        ]);
    }

    public function settingForm(): string|null|WidgetForm
    {
        return WidgetForm::createFromArray($this->getConfig())
            ->add(
                'button_label',
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Button label'))
                    ->toArray()
            )
            ->add(
                'button_url',
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Button URL'))
                    ->toArray()
            )
            ->add(
                'limit',
                NumberField::class,
                NumberFieldOption::make()
                    ->label(__('Limit'))
                    ->toArray()
            );
    }

    protected function data(): array|Collection
    {
        $limit = (int) Arr::get($this->getConfig(), 'limit', 6);

        $galleries = Gallery::query()
            ->with('slugable')
            ->wherePublished()
            ->when($limit > 0, fn ($query) => $query->limit($limit))
            ->orderBy('order')
            ->orderByDesc('created_at')
            ->get();

        return compact('galleries');
    }

    protected function requiredPlugins(): array
    {
        return ['gallery'];
    }
}
