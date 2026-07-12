.class Ldev/ukanth/ufirewall/util/UidResolver$ProcessInfo;
.super Ljava/lang/Object;
.source "UidResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/util/UidResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessInfo"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field pid:I

.field state:Ljava/lang/String;

.field uid:I


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/UidResolver$ProcessInfo;->name:Ljava/lang/String;

    iput p2, p0, Ldev/ukanth/ufirewall/util/UidResolver$ProcessInfo;->uid:I

    iput p3, p0, Ldev/ukanth/ufirewall/util/UidResolver$ProcessInfo;->pid:I

    iput-object p4, p0, Ldev/ukanth/ufirewall/util/UidResolver$ProcessInfo;->state:Ljava/lang/String;

    return-void
.end method
