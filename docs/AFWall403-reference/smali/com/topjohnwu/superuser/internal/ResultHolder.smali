.class Lcom/topjohnwu/superuser/internal/ResultHolder;
.super Ljava/lang/Object;
.source "ResultHolder.java"

# interfaces
.implements Lcom/topjohnwu/superuser/Shell$ResultCallback;


# instance fields
.field private result:Lcom/topjohnwu/superuser/Shell$Result;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getResult()Lcom/topjohnwu/superuser/Shell$Result;
    .locals 1

    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/ResultHolder;->result:Lcom/topjohnwu/superuser/Shell$Result;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/topjohnwu/superuser/internal/ResultImpl;

    invoke-direct {v0}, Lcom/topjohnwu/superuser/internal/ResultImpl;-><init>()V

    :cond_0
    return-object v0
.end method

.method public onResult(Lcom/topjohnwu/superuser/Shell$Result;)V
    .locals 0

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/ResultHolder;->result:Lcom/topjohnwu/superuser/Shell$Result;

    return-void
.end method
