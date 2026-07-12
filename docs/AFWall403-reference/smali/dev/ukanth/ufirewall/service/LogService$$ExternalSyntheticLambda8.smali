.class public final synthetic Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ldev/ukanth/ufirewall/log/LogData;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ldev/ukanth/ufirewall/log/LogData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iput-object p2, p0, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda8;->f$1:Ldev/ukanth/ufirewall/log/LogData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda8;->f$1:Ldev/ukanth/ufirewall/log/LogData;

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/service/LogService;->lambda$store$10(Ljava/lang/String;Ldev/ukanth/ufirewall/log/LogData;)V

    return-void
.end method
