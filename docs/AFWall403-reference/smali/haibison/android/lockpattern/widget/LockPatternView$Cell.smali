.class public Lhaibison/android/lockpattern/widget/LockPatternView$Cell;
.super Ljava/lang/Object;
.source "LockPatternView.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhaibison/android/lockpattern/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cell"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lhaibison/android/lockpattern/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field static sCells:[[Lhaibison/android/lockpattern/widget/LockPatternView$Cell;


# instance fields
.field public final column:I

.field public final row:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    filled-new-array {v0, v0}, [I

    move-result-object v1

    const-class v2, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    .line 75
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    sput-object v1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->sCells:[[Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_0

    sget-object v4, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->sCells:[[Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    .line 80
    aget-object v4, v4, v2

    new-instance v5, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    invoke-direct {v5, v2, v3}, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;-><init>(II)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_1
    new-instance v0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell$1;

    invoke-direct {v0}, Lhaibison/android/lockpattern/widget/LockPatternView$Cell$1;-><init>()V

    sput-object v0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1, p2}, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->checkRange(II)V

    iput p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    iput p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lhaibison/android/lockpattern/widget/LockPatternView$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static checkRange(II)V
    .locals 1

    if-ltz p0, :cond_1

    const/4 v0, 0x2

    if-gt p0, v0, :cond_1

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    return-void

    .line 131
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "column must be in range 0-2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "row must be in range 0-2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized of(I)Lhaibison/android/lockpattern/widget/LockPatternView$Cell;
    .locals 2

    const-class v0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    monitor-enter v0

    .line 122
    :try_start_0
    div-int/lit8 v1, p0, 0x3

    rem-int/lit8 p0, p0, 0x3

    invoke-static {v1, p0}, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->of(II)Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized of(II)Lhaibison/android/lockpattern/widget/LockPatternView$Cell;
    .locals 2

    const-class v0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    monitor-enter v0

    .line 109
    :try_start_0
    invoke-static {p0, p1}, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->checkRange(II)V

    sget-object v1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->sCells:[[Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    .line 110
    aget-object p0, v1, p0

    aget-object p0, p0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 143
    instance-of v0, p1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    if-eqz v0, :cond_1

    iget v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    .line 144
    check-cast p1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;

    iget v1, p1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    iget p1, p1, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 146
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getId()I
    .locals 2

    iget v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(ROW="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",COL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->column:I

    .line 160
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$Cell;->row:I

    .line 161
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
