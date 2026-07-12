.class final Lorg/xbill/DNS/FormattedTime;
.super Ljava/lang/Object;
.source "FormattedTime.java"


# static fields
.field private static final DEFAULT_FORMAT:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "yyyyMMddHHmmss"

    .line 18
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/format/DateTimeFormatter;Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/FormattedTime;->DEFAULT_FORMAT:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/time/Instant;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/FormattedTime;->DEFAULT_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 29
    invoke-static {v0, p0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Ljava/time/Instant;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/time/format/DateTimeParseException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/xbill/DNS/FormattedTime;->DEFAULT_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 43
    new-instance v1, Lorg/xbill/DNS/FormattedTime$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/xbill/DNS/FormattedTime$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v0, p0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/time/Instant;

    move-result-object p0

    return-object p0

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    .line 45
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(J)Ljava/time/Instant;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "Invalid time encoding: "

    const/4 v1, 0x0

    .line 47
    invoke-static {v0, p0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Ljava/time/format/DateTimeParseException;

    move-result-object p0

    throw p0
.end method
