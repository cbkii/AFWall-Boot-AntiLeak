.class public abstract Lcom/topjohnwu/superuser/internal/IRootServiceManager$Stub;
.super Landroid/os/Binder;
.source "IRootServiceManager.java"

# interfaces
.implements Lcom/topjohnwu/superuser/internal/IRootServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/topjohnwu/superuser/internal/IRootServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/topjohnwu/superuser/internal/IRootServiceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_bind:I = 0x4

.field static final TRANSACTION_broadcast:I = 0x1

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_stop:I = 0x2

.field static final TRANSACTION_unbind:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.topjohnwu.superuser.internal.IRootServiceManager"

    .line 38
    invoke-virtual {p0, p0, v0}, Lcom/topjohnwu/superuser/internal/IRootServiceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/topjohnwu/superuser/internal/IRootServiceManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.topjohnwu.superuser.internal.IRootServiceManager"

    .line 49
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    instance-of v1, v0, Lcom/topjohnwu/superuser/internal/IRootServiceManager;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Lcom/topjohnwu/superuser/internal/IRootServiceManager;

    return-object v0

    .line 53
    :cond_1
    new-instance v0, Lcom/topjohnwu/superuser/internal/IRootServiceManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/topjohnwu/superuser/internal/IRootServiceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.topjohnwu.superuser.internal.IRootServiceManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 63
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 111
    :cond_1
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/topjohnwu/superuser/internal/IRootServiceManager$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 112
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IRootServiceManager$Stub;->unbind(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 102
    :cond_2
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/topjohnwu/superuser/internal/IRootServiceManager$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IRootServiceManager$Stub;->bind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IRootServiceManager$Stub;->connect(Landroid/os/IBinder;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    :cond_4
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/topjohnwu/superuser/internal/IRootServiceManager$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/topjohnwu/superuser/internal/IRootServiceManager$Stub;->stop(Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 78
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/IRootServiceManager$Stub;->broadcast(I)V

    :goto_0
    return v1

    .line 69
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
