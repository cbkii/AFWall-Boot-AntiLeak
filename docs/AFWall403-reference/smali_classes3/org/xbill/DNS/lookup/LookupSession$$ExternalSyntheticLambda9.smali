.class public final synthetic Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/lookup/LookupSession;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/lookup/LookupSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda9;->f$0:Lorg/xbill/DNS/lookup/LookupSession;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda9;->f$0:Lorg/xbill/DNS/lookup/LookupSession;

    check-cast p1, Lorg/xbill/DNS/Message;

    invoke-static {v0, p1}, Lorg/xbill/DNS/lookup/LookupSession;->$r8$lambda$RgACP7cYzV45tPDSRJkEyma50P4(Lorg/xbill/DNS/lookup/LookupSession;Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object p1

    return-object p1
.end method
