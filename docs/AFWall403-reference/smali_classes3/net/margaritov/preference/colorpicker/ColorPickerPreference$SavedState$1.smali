.class Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState$1;
.super Ljava/lang/Object;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;
    .locals 1

    .line 310
    new-instance v0, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    invoke-direct {v0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 308
    invoke-virtual {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState$1;->newArray(I)[Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;
    .locals 0

    .line 314
    new-array p1, p1, [Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    return-object p1
.end method
