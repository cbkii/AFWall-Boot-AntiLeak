.class Leu/chainfire/libsuperuser/Shell$Command;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Command"
.end annotation


# static fields
.field private static commandCounter:I


# instance fields
.field private final code:I

.field private final commands:[Ljava/lang/String;

.field private final marker:Ljava/lang/String;

.field private volatile markerInputStream:Leu/chainfire/libsuperuser/MarkerInputStream;

.field private final onCommandInputStreamListener:Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

.field private final onCommandLineListener:Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

.field private final onCommandResultListener:Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

.field private final onCommandResultListener2:Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V
    .locals 5

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->markerInputStream:Leu/chainfire/libsuperuser/MarkerInputStream;

    .line 888
    instance-of v1, p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 889
    check-cast p1, Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Command;->commands:[Ljava/lang/String;

    goto :goto_0

    .line 890
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 891
    check-cast p1, Ljava/util/List;

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Command;->commands:[Ljava/lang/String;

    goto :goto_0

    .line 892
    :cond_1
    instance-of v1, p1, [Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 893
    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Command;->commands:[Ljava/lang/String;

    :goto_0
    iput p2, p0, Leu/chainfire/libsuperuser/Shell$Command;->code:I

    .line 898
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    sget v4, Leu/chainfire/libsuperuser/Shell$Command;->commandCounter:I

    add-int/2addr v4, v1

    sput v4, Leu/chainfire/libsuperuser/Shell$Command;->commandCounter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "-%08x"

    invoke-static {p2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Command;->marker:Ljava/lang/String;

    if-eqz p3, :cond_6

    .line 905
    instance-of p1, p3, Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    if-eqz p1, :cond_2

    .line 906
    check-cast p3, Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-object p2, p3

    move-object p1, v0

    move-object p3, p1

    goto :goto_2

    .line 907
    :cond_2
    instance-of p1, p3, Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    if-eqz p1, :cond_3

    .line 908
    check-cast p3, Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    move-object p1, p3

    move-object p2, v0

    goto :goto_1

    .line 909
    :cond_3
    instance-of p1, p3, Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    if-eqz p1, :cond_4

    .line 910
    check-cast p3, Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    move-object p1, v0

    move-object p2, p1

    goto :goto_2

    .line 911
    :cond_4
    instance-of p1, p3, Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    if-eqz p1, :cond_5

    .line 912
    check-cast p3, Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    move-object p1, v0

    move-object p2, p1

    move-object v0, p3

    goto :goto_1

    .line 914
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "OnResult is not a supported callback interface"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    move-object p1, v0

    move-object p2, p1

    :goto_1
    move-object p3, p2

    :goto_2
    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandResultListener:Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    iput-object p3, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandResultListener2:Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandLineListener:Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    iput-object p2, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandInputStreamListener:Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    return-void

    .line 895
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "commands parameter must be of type String, List<String> or String[]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$1600(Leu/chainfire/libsuperuser/Shell$Command;)[Ljava/lang/String;
    .locals 0

    .line 873
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Command;->commands:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;
    .locals 0

    .line 873
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandResultListener:Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    return-object p0
.end method

.method static synthetic access$1800(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;
    .locals 0

    .line 873
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandResultListener2:Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    return-object p0
.end method

.method static synthetic access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;
    .locals 0

    .line 873
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandInputStreamListener:Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    return-object p0
.end method

.method static synthetic access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;
    .locals 0

    .line 873
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Command;->marker:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/MarkerInputStream;
    .locals 0

    .line 873
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Command;->markerInputStream:Leu/chainfire/libsuperuser/MarkerInputStream;

    return-object p0
.end method

.method static synthetic access$2102(Leu/chainfire/libsuperuser/Shell$Command;Leu/chainfire/libsuperuser/MarkerInputStream;)Leu/chainfire/libsuperuser/MarkerInputStream;
    .locals 0

    .line 873
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Command;->markerInputStream:Leu/chainfire/libsuperuser/MarkerInputStream;

    return-object p1
.end method

.method static synthetic access$2200(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;
    .locals 0

    .line 873
    iget-object p0, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandLineListener:Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    return-object p0
.end method

.method static synthetic access$2300(Leu/chainfire/libsuperuser/Shell$Command;)I
    .locals 0

    .line 873
    iget p0, p0, Leu/chainfire/libsuperuser/Shell$Command;->code:I

    return p0
.end method
