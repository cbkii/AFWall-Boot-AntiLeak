.class Lcom/topjohnwu/superuser/internal/IOResult;
.super Ljava/lang/Object;
.source "IOResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/topjohnwu/superuser/internal/IOResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final REMOTE_ERR_MSG:Ljava/lang/String; = "Exception thrown on remote process"

.field private static final cl:Ljava/lang/ClassLoader;


# instance fields
.field private final val:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/topjohnwu/superuser/internal/IOResult;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/internal/IOResult;->cl:Ljava/lang/ClassLoader;

    .line 64
    new-instance v0, Lcom/topjohnwu/superuser/internal/IOResult$1;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/IOResult$1;-><init>()V

    sput-object v0, Lcom/topjohnwu/superuser/internal/IOResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/IOResult;->val:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/topjohnwu/superuser/internal/IOResult;->cl:Ljava/lang/ClassLoader;

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/IOResult;->val:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/topjohnwu/superuser/internal/IOResult$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/topjohnwu/superuser/internal/IOResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/IOResult;->val:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method checkException()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/IOResult;->val:Ljava/lang/Object;

    .line 45
    instance-of v0, v0, Ljava/lang/Throwable;

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/IOResult;->val:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "Exception thrown on remote process"

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method tryAndGet()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/IOResult;->checkException()V

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/IOResult;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/topjohnwu/superuser/internal/IOResult;->val:Ljava/lang/Object;

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
