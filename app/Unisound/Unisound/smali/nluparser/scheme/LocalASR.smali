.class public Lnluparser/scheme/LocalASR;
.super Lnluparser/scheme/ASR;


# instance fields
.field score:F
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "score"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "score"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnluparser/scheme/ASR;-><init>()V

    return-void
.end method


# virtual methods
.method public getScore()F
    .locals 1

    iget v0, p0, Lnluparser/scheme/LocalASR;->score:F

    return v0
.end method

.method public setScore(F)V
    .locals 0
    .param p1, "score"    # F

    .prologue
    iput p1, p0, Lnluparser/scheme/LocalASR;->score:F

    return-void
.end method
