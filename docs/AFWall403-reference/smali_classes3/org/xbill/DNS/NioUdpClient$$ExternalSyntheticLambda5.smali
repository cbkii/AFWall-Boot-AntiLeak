.class public final synthetic Lorg/xbill/DNS/NioUdpClient$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/EOFException;


# direct methods
.method public synthetic constructor <init>(Ljava/io/EOFException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/NioUdpClient$$ExternalSyntheticLambda5;->f$0:Ljava/io/EOFException;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/NioUdpClient$$ExternalSyntheticLambda5;->f$0:Ljava/io/EOFException;

    check-cast p1, Lorg/xbill/DNS/NioUdpClient$Transaction;

    invoke-static {v0, p1}, Lorg/xbill/DNS/NioUdpClient;->lambda$closeUdp$0(Ljava/io/EOFException;Lorg/xbill/DNS/NioUdpClient$Transaction;)V

    return-void
.end method
