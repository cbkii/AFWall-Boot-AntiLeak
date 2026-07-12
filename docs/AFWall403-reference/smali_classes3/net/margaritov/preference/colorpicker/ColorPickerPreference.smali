.class public Lnet/margaritov/preference/colorpicker/ColorPickerPreference;
.super Landroid/preference/Preference;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAlphaSliderEnabled:Z

.field private mDensity:F

.field mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

.field private mHexValueEnabled:Z

.field private mValue:I

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x1000000

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    iput-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x1000000

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    iput-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    .line 59
    invoke-direct {p0, p1, p2}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, -0x1000000

    iput p3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    const/4 p3, 0x0

    iput p3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/4 p3, 0x0

    iput-boolean p3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    iput-boolean p3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    .line 64
    invoke-direct {p0, p1, p2}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static convertToARGB(I)Ljava/lang/String;
    .locals 6

    .line 195
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "0"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 216
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertToColorInt(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "#"

    .line 256
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 260
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static convertToRGB(I)Ljava/lang/String;
    .locals 5

    .line 228
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "0"

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 244
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 7

    iget v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/high16 v1, 0x41f80000    # 31.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    .line 119
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_3

    const/4 v6, 0x1

    if-le v4, v6, :cond_1

    if-le v5, v6, :cond_1

    add-int/lit8 v6, v2, -0x2

    if-ge v4, v6, :cond_1

    add-int/lit8 v6, v3, -0x2

    if-lt v5, v6, :cond_0

    goto :goto_2

    :cond_0
    move v6, v1

    goto :goto_3

    :cond_1
    :goto_2
    const v6, -0x777778

    .line 126
    :goto_3
    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    if-eq v4, v5, :cond_2

    .line 128
    invoke-virtual {v0, v5, v4, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    .line 79
    invoke-virtual {p0, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    if-eqz p2, :cond_0

    const-string p1, "alphaSlider"

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-interface {p2, v0, p1, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    const-string p1, "hexValue"

    .line 82
    invoke-interface {p2, v0, p1, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    :cond_0
    return-void
.end method

.method private setPreviewColor()V
    .locals 7

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    const v2, 0x1020018

    .line 96
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 98
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    .line 101
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/high16 v6, 0x41000000    # 8.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    .line 103
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    .line 99
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 106
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 108
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 110
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 112
    new-instance v1, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    const/high16 v2, 0x40a00000    # 5.0f

    iget v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    invoke-direct {v1, v2}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iput-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    .line 90
    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setPreviewColor()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 1

    .line 138
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->persistInt(I)Z

    :cond_0
    iput p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    .line 142
    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setPreviewColor()V

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/high16 v0, -0x1000000

    .line 69
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    .line 151
    invoke-virtual {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 277
    instance-of v0, p1, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    if-nez v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    check-cast p1, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    .line 284
    invoke-virtual {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 285
    iget-object p1, p1, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    return-void

    .line 279
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 265
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    new-instance v1, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    invoke-direct {v1, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    .line 271
    invoke-virtual {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    .line 74
    invoke-virtual {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->onColorChanged(I)V

    return-void
.end method

.method public setAlphaSliderEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    return-void
.end method

.method public setHexValueEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3

    .line 156
    new-instance v0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    invoke-direct {v0, v1, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    .line 157
    invoke-virtual {v0, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    iget-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    .line 159
    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setAlphaSliderVisible(Z)V

    :cond_0
    iget-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    .line 162
    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setHexValueEnabled(Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    .line 165
    invoke-virtual {v0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_2
    iget-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    .line 167
    invoke-virtual {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->show()V

    return-void
.end method
