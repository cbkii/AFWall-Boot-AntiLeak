.class Lhaibison/android/lockpattern/widget/LockPatternView$SavedState$1;
.super Ljava/lang/Object;
.source "LockPatternView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;
    .locals 2

    .line 1316
    new-instance v0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcel;Lhaibison/android/lockpattern/widget/LockPatternView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1313
    invoke-virtual {p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;
    .locals 0

    .line 1320
    new-array p1, p1, [Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1313
    invoke-virtual {p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState$1;->newArray(I)[Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;

    move-result-object p1

    return-object p1
.end method
