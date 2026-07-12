.class public final synthetic Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/Zone;

.field public final synthetic f$1:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/Zone;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda6;->f$0:Lorg/xbill/DNS/Zone;

    iput-object p2, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda6;->f$1:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda6;->f$0:Lorg/xbill/DNS/Zone;

    iget-object v1, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda6;->f$1:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Zone;->lambda$toMasterFile$9$org-xbill-DNS-Zone(Ljava/lang/StringBuilder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
