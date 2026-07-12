.class Lorg/xbill/DNS/Resolver$1;
.super Ljava/lang/Object;
.source "Resolver.java"

# interfaces
.implements Lorg/xbill/DNS/ResolverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xbill/DNS/Resolver$-CC;->$default$sendAsync(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xbill/DNS/Resolver;

.field final synthetic val$f:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method constructor <init>(Lorg/xbill/DNS/Resolver;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/xbill/DNS/Resolver$1;->this$0:Lorg/xbill/DNS/Resolver;

    iput-object p2, p0, Lorg/xbill/DNS/Resolver$1;->val$f:Ljava/util/concurrent/CompletableFuture;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    iget-object p1, p0, Lorg/xbill/DNS/Resolver$1;->val$f:Ljava/util/concurrent/CompletableFuture;

    .line 215
    invoke-static {p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    return-void
.end method

.method public receiveMessage(Ljava/lang/Object;Lorg/xbill/DNS/Message;)V
    .locals 0

    iget-object p1, p0, Lorg/xbill/DNS/Resolver$1;->val$f:Ljava/util/concurrent/CompletableFuture;

    .line 210
    invoke-static {p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Object;)Z

    return-void
.end method
