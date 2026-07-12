.class public final synthetic Lorg/xbill/DNS/Zone$ZoneIterator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/Zone$ZoneIterator;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/Zone$ZoneIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/Zone$ZoneIterator$$ExternalSyntheticLambda1;->f$0:Lorg/xbill/DNS/Zone$ZoneIterator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator$$ExternalSyntheticLambda1;->f$0:Lorg/xbill/DNS/Zone$ZoneIterator;

    invoke-virtual {v0}, Lorg/xbill/DNS/Zone$ZoneIterator;->lambda$remove$2$org-xbill-DNS-Zone$ZoneIterator()V

    return-void
.end method
