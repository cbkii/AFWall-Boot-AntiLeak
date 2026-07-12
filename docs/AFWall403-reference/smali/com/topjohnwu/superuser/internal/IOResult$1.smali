.class Lcom/topjohnwu/superuser/internal/IOResult$1;
.super Ljava/lang/Object;
.source "IOResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/topjohnwu/superuser/internal/IOResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/topjohnwu/superuser/internal/IOResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 2

    .line 67
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Landroid/os/Parcel;Lcom/topjohnwu/superuser/internal/IOResult$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IOResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/topjohnwu/superuser/internal/IOResult;
    .locals 0

    .line 72
    new-array p1, p1, [Lcom/topjohnwu/superuser/internal/IOResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IOResult$1;->newArray(I)[Lcom/topjohnwu/superuser/internal/IOResult;

    move-result-object p1

    return-object p1
.end method
