<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
<form method="POST" action="{{ route('form.submit') }}">
@csrf

<div class="form-group">
    <label for="category_id">Category:</label>
    <select class="form-control" id="category_id" name="category_id">
        @foreach ($categories as $category)
            <option value="{{ $category->id }}">{{ $category->name }}</option>
        @endforeach
    </select>
</div>

<div class="form-group">
    <label for="products">Products:</label><br>
    @foreach ($products as $product)
        @if ($loop->first || $product->category_id !== $prevCategoryId)
            <hr>
            <h4>{{ $product->category->name }}</h4>
        @endif
        <div class="form-check">
            <input class="form-check-input" type="checkbox" id="product_{{ $product->id }}" name="products[{{ $product->category_id }}][]" value="{{ $product->name }}">
            <label class="form-check-label" for="product_{{ $product->id }}">
                {{ $product->name }}
            </label>
        </div>
        @php
            $prevCategoryId = $product->category_id;
        @endphp
    @endforeach
</div>

<button type="submit" class="btn btn-primary">Submit</button>
</form>

    ?>
</body>
</html>