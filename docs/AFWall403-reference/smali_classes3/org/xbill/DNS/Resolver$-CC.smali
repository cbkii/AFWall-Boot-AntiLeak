.class public final synthetic Lorg/xbill/DNS/Resolver$-CC;
.super Ljava/lang/Object;
.source "Resolver.java"


# direct methods
.method public static $default$getTimeout(Lorg/xbill/DNS/Resolver;)Ljava/time/Duration;
    .locals 2
    .param p0, "_this"    # Lorg/xbill/DNS/Resolver;

    .line 0
    const-wide/16 v0, 0xa

    .line 136
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static $default$send(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 4
    .param p0, "_this"    # Lorg/xbill/DNS/Resolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    :try_start_0
    invoke-interface {p0, p1}, Lorg/xbill/DNS/Resolver;->sendAsync(Lorg/xbill/DNS/Message;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 153
    invoke-interface {p0}, Lorg/xbill/DNS/Resolver;->getTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/time/Duration;)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Message;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Timed out while trying to resolve "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v3

    iget v3, v3, Lorg/xbill/DNS/Record;->type:I

    invoke-static {v3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xbill/DNS/Header;->getID()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 160
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 163
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 159
    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    :catch_2
    move-exception p1

    .line 155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 156
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static $default$sendAsync(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;
    .locals 2
    .param p0, "_this"    # Lorg/xbill/DNS/Resolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 237
    invoke-interface {p0, p1}, Lorg/xbill/DNS/Resolver;->sendAsync(Lorg/xbill/DNS/Message;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    .line 238
    new-instance v1, Lorg/xbill/DNS/Resolver$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, v0}, Lorg/xbill/DNS/Resolver$$ExternalSyntheticLambda4;-><init>(Lorg/xbill/DNS/ResolverListener;Ljava/lang/Object;)V

    invoke-static {p1, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    return-object v0
.end method

.method public static $default$sendAsync(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/Message;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p0, "_this"    # Lorg/xbill/DNS/Resolver;

    .line 188
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/xbill/DNS/Resolver;->sendAsync(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method public static $default$sendAsync(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .param p0, "_this"    # Lorg/xbill/DNS/Resolver;

    .line 204
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/CompletableFuture;

    move-result-object p2

    .line 205
    new-instance v0, Lorg/xbill/DNS/Resolver$1;

    invoke-direct {v0, p0, p2}, Lorg/xbill/DNS/Resolver$1;-><init>(Lorg/xbill/DNS/Resolver;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p0, p1, v0}, Lorg/xbill/DNS/Resolver;->sendAsync(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;

    return-object p2
.end method

.method public static $default$setEDNS(Lorg/xbill/DNS/Resolver;I)V
    .locals 2
    .param p0, "_this"    # Lorg/xbill/DNS/Resolver;

    .line 0
    const/4 v0, 0x0

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, p1, v0, v0, v1}, Lorg/xbill/DNS/Resolver;->setEDNS(IIILjava/util/List;)V

    return-void
.end method

.method public static varargs $default$setEDNS(Lorg/xbill/DNS/Resolver;III[Lorg/xbill/DNS/EDNSOption;)V
    .locals 0
    .param p0, "_this"    # Lorg/xbill/DNS/Resolver;

    .line 0
    if-nez p4, :cond_0

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    .line 86
    :goto_0
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xbill/DNS/Resolver;->setEDNS(IIILjava/util/List;)V

    return-void
.end method

.method public static $default$setTimeout(Lorg/xbill/DNS/Resolver;I)V
    .locals 2
    .param p0, "_this"    # Lorg/xbill/DNS/Resolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    int-to-long v0, p1

    .line 120
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(J)Ljava/time/Duration;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/xbill/DNS/Resolver;->setTimeout(Ljava/time/Duration;)V

    return-void
.end method

.method public static $default$setTimeout(Lorg/xbill/DNS/Resolver;II)V
    .locals 4
    .param p0, "_this"    # Lorg/xbill/DNS/Resolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    int-to-long p1, p2

    add-long/2addr v0, p1

    .line 109
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$2(J)Ljava/time/Duration;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/xbill/DNS/Resolver;->setTimeout(Ljava/time/Duration;)V

    return-void
.end method

.method public static synthetic lambda$sendAsync$0(Lorg/xbill/DNS/ResolverListener;Ljava/lang/Object;Lorg/xbill/DNS/Message;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    .line 0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 242
    instance-of p2, p3, Ljava/lang/Exception;

    if-eqz p2, :cond_0

    .line 243
    check-cast p3, Ljava/lang/Exception;

    goto :goto_0

    .line 245
    :cond_0
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    move-object p3, p2

    .line 247
    :goto_0
    invoke-interface {p0, p1, p3}, Lorg/xbill/DNS/ResolverListener;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v0

    .line 251
    :cond_1
    invoke-interface {p0, p1, p2}, Lorg/xbill/DNS/ResolverListener;->receiveMessage(Ljava/lang/Object;Lorg/xbill/DNS/Message;)V

    return-object v0
.end method
