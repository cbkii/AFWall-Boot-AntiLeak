.class public Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

.field private mHexDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mHexVal:Landroid/widget/EditText;

.field private mHexValueEnabled:Z

.field private mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

.field private mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmColorPicker(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Lnet/margaritov/preference/colorpicker/ColorPickerView;
    .locals 0

    iget-object p0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHexDefaultTextColor(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHexVal(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    .line 65
    invoke-direct {p0, p2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->init(I)V

    return-void
.end method

.method private init(I)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 72
    invoke-direct {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setUp(I)V

    return-void
.end method

.method private setUp(I)V
    .locals 4

    .line 78
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 80
    sget v1, Ldev/ukanth/ufirewall/R$layout;->dialog_color_picker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    .line 84
    sget v1, Ldev/ukanth/ufirewall/R$string;->dialog_color_picker:I

    invoke-virtual {p0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setTitle(I)V

    .line 86
    sget v1, Ldev/ukanth/ufirewall/R$id;->color_picker_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/margaritov/preference/colorpicker/ColorPickerView;

    iput-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    .line 87
    sget v1, Ldev/ukanth/ufirewall/R$id;->old_color_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 88
    sget v1, Ldev/ukanth/ufirewall/R$id;->new_color_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 90
    sget v1, Ldev/ukanth/ufirewall/R$id;->hex_val:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/high16 v1, 0x80000

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    .line 92
    invoke-virtual {v0}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    .line 94
    new-instance v1, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$1;

    invoke-direct {v1, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$1;-><init>(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 119
    invoke-virtual {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    .line 120
    invoke-virtual {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    .line 122
    invoke-virtual {v2}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    .line 119
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 126
    invoke-virtual {v0, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 127
    invoke-virtual {v0, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    .line 128
    invoke-virtual {v0, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 129
    invoke-virtual {v0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    const/4 v1, 0x1

    .line 130
    invoke-virtual {v0, p1, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method private updateHexLengthFilter()V
    .locals 5

    .line 165
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    .line 166
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    .line 168
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void
.end method

.method private updateHexValue(I)V
    .locals 2

    .line 172
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    .line 173
    invoke-static {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    .line 175
    invoke-static {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToRGB(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 177
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public getAlphaSliderVisible()Z
    .locals 1

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    .line 189
    invoke-virtual {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getAlphaSliderVisible()Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    .line 203
    invoke-virtual {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public getHexValueEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Ldev/ukanth/ufirewall/R$id;->new_color_panel:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 210
    invoke-virtual {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v0

    invoke-interface {p1, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    .line 213
    :cond_0
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->dismiss()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 1

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 137
    invoke-virtual {v0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    iget-boolean v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->updateHexValue(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 226
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const-string v1, "old_color"

    .line 227
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    const-string v1, "new_color"

    .line 228
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 218
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 219
    invoke-virtual {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v1

    const-string v2, "old_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 220
    invoke-virtual {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v1

    const-string v2, "new_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1

    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    .line 181
    invoke-virtual {v0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setAlphaSliderVisible(Z)V

    iget-boolean p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    if-eqz p1, :cond_0

    .line 183
    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->updateHexLengthFilter()V

    .line 184
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getColor()I

    move-result p1

    invoke-direct {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->updateHexValue(I)V

    :cond_0
    return-void
.end method

.method public setHexValueEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 154
    invoke-direct {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->updateHexLengthFilter()V

    .line 155
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getColor()I

    move-result p1

    invoke-direct {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->updateHexValue(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/16 v0, 0x8

    .line 157
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    return-void
.end method
