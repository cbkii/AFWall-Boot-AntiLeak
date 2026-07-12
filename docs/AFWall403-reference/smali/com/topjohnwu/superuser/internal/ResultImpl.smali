.class Lcom/topjohnwu/superuser/internal/ResultImpl;
.super Lcom/topjohnwu/superuser/Shell$Result;
.source "ResultImpl.java"


# instance fields
.field code:I

.field err:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field out:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/topjohnwu/superuser/Shell$Result;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/topjohnwu/superuser/internal/ResultImpl;->code:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/topjohnwu/superuser/internal/ResultImpl;->code:I

    return v0
.end method

.method public getErr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ResultImpl;->err:Ljava/util/List;

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOut()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ResultImpl;->out:Ljava/util/List;

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method
