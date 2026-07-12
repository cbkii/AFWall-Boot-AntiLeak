.class public final synthetic Lorg/xbill/DNS/HIPRecord$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/DNSOutput;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/DNSOutput;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/HIPRecord$$ExternalSyntheticLambda1;->f$0:Lorg/xbill/DNS/DNSOutput;

    iput-boolean p2, p0, Lorg/xbill/DNS/HIPRecord$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/HIPRecord$$ExternalSyntheticLambda1;->f$0:Lorg/xbill/DNS/DNSOutput;

    iget-boolean v1, p0, Lorg/xbill/DNS/HIPRecord$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Lorg/xbill/DNS/Name;

    invoke-static {v0, v1, p1}, Lorg/xbill/DNS/HIPRecord;->lambda$rrToWire$0(Lorg/xbill/DNS/DNSOutput;ZLorg/xbill/DNS/Name;)V

    return-void
.end method
