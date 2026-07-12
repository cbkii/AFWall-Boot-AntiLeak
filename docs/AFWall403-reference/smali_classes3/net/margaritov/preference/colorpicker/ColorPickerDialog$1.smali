.class Lnet/margaritov/preference/colorpicker/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setUp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$1;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p3, 0x6

    const/4 v0, 0x0

    if-ne p2, p3, :cond_2

    .line 99
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 100
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$1;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    .line 101
    invoke-static {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->-$$Nest$fgetmHexVal(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x5

    const/4 v0, 0x1

    const/high16 v1, -0x10000

    if-gt p2, p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0xa

    if-ge p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$1;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    .line 111
    invoke-static {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->-$$Nest$fgetmHexVal(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_1

    .line 104
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$1;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    .line 105
    invoke-static {p2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->-$$Nest$fgetmColorPicker(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Lnet/margaritov/preference/colorpicker/ColorPickerView;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    iget-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$1;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    .line 106
    invoke-static {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->-$$Nest$fgetmHexVal(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$1;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {p2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->-$$Nest$fgetmHexDefaultTextColor(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$1;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    .line 108
    invoke-static {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->-$$Nest$fgetmHexVal(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    :cond_2
    :goto_1
    return v0
.end method
