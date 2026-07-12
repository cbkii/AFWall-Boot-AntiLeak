.class Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhaibison/android/lockpattern/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayMode:I

.field private final mInStealthMode:Z

.field private final mInputEnabled:Z

.field private final mSerializedPattern:Ljava/lang/String;

.field private final mTactileFeedbackEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1313
    new-instance v0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState$1;

    invoke-direct {v0}, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState$1;-><init>()V

    sput-object v0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1274
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mDisplayMode:I

    const/4 v0, 0x0

    .line 1277
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mInputEnabled:Z

    .line 1278
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mInStealthMode:Z

    .line 1279
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lhaibison/android/lockpattern/widget/LockPatternView$1;)V
    .locals 0

    .line 1248
    invoke-direct {p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V
    .locals 0

    .line 1262
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput-object p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    iput p3, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mDisplayMode:I

    iput-boolean p4, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mInputEnabled:Z

    iput-boolean p5, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mInStealthMode:Z

    iput-boolean p6, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLhaibison/android/lockpattern/widget/LockPatternView$1;)V
    .locals 0

    .line 1248
    invoke-direct/range {p0 .. p6}, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V

    return-void
.end method


# virtual methods
.method public getDisplayMode()I
    .locals 1

    iget v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mDisplayMode:I

    return v0
.end method

.method public getSerializedPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    return-object v0
.end method

.method public isInStealthMode()Z
    .locals 1

    iget-boolean v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mInStealthMode:Z

    return v0
.end method

.method public isInputEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mInputEnabled:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1304
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1305
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mDisplayMode:I

    .line 1306
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mInputEnabled:Z

    .line 1307
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-boolean p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mInStealthMode:Z

    .line 1308
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-boolean p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    .line 1309
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
