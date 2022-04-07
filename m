Return-Path: <usb-storage+bncBCIKNOFMWQGRBGMVXGJAMGQEI7RXPEY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 6294E4F7200
	for <lists+usb-storage@lfdr.de>; Thu,  7 Apr 2022 04:21:15 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id k3-20020a170902c40300b00156b46e23ecsf2025064plk.14
        for <lists+usb-storage@lfdr.de>; Wed, 06 Apr 2022 19:21:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649298074; cv=pass;
        d=google.com; s=arc-20160816;
        b=0dHxoe+84jFPNp4zhk3lu/T3jozuDzn8aSPTSB4XzQzn1CLi0HKNYC4hn4h0bHF6Rn
         lC7F4ROgXI0ay0wG1dv1yJ604iyf+lfAHLP1fJU3JsAp/rUuDXF2d4UuTmjGtqysOyld
         E/6sD6pw8bXi6hgk9xPpb39ePvaSHKd0RPRxRCNQzdn48yAmmn0sLVwjxrX2j3QWrC+0
         w8UOMvR64vl0X8YjWDfzlz5/tBMcaP25lhvItMZUqKdp9A3GymQyMNfH2uWqNSXxnWXQ
         iAlgxnKPP9GYSSmFFAjBuVygd4r+F/IaeS0J/vQitx9QB9E1CtNHzeNz3DTJp94GmN+v
         n+Sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=xv+xrchfBb4N7sgNFWl1dLFRAD4oUxtDOKYjOCnr9FI=;
        b=rkgbQLvqBqP1lPpWT/COq73UfU7Lx6J+t9WwyF54rgIFORy3k8L9/l+69rQDQuTfXD
         NzEBAmltM4hD54/oHBqW/rCoUbGAMwB16i1Fb/p8SpOSa6KKc7mbtbm2Nn1UV2OQtG3i
         nUmETe0CUtseZ1jirPoEiktAtzg0jB+FQUAl0aK/RJryH1dmyzgMt9osa7X/e10hX1cQ
         EZR5yo4Bicz+52FatdjDDy/pidOOQBir7NvPnY5qrURh3zrImNkElU/WXWevq8vhjMA2
         VmMsWmIurpxhBqKgd9JtdhS4+a9NrerzFg/22AdB+W81B9HoVCurRPWAUxXPlEosyclD
         fqSg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xv+xrchfBb4N7sgNFWl1dLFRAD4oUxtDOKYjOCnr9FI=;
        b=KmghtumO2DL7+ozkegw9Mr4jSOOWLzgjCvHvq4/KO9CfRQBywUE+FwsOgq30pLY89l
         WOlXc6Q+aBgwIt/tv26Mv1xaUNilEILBprdVV1FoyB4F/Ha5hV+klxJUvP99JFbE/laY
         +ffSO3DmKIOZr92azAzlB7SfF+N7PiFCPM7fw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xv+xrchfBb4N7sgNFWl1dLFRAD4oUxtDOKYjOCnr9FI=;
        b=BDehG8WKDjVirkDuVkT0M123DW2cTi77uae+8xfG9zoT9w2kTvrRO2Mg4xzrBsiZkG
         qCq4zV0ViY9ZXT3MvR0EDrjKfg2cBLFion07nSLYqVtPzkrdlBXIhb7uN4oDA2tfUI9C
         F8JCrCCzL76PfhARE/jZNzww5FivQtKidSe9VCl6VKSB/Aun9x/yGjg4JBdakmU6SuGZ
         lpvlaZ3hRtsCbKZwvZzS4Pqcw1gAcnXx2N1heFe49OHSkLrRsGC5+8G3UPWhsk4QFv9U
         3+3GrH5VecrdMn//PfdTjbCzl/fRjfTQLBTD9M0nnVr8NqNTNizptV6Njha/cmqlqKME
         xAbQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532SbXh7PvHYZZtW56080LFAhtoyuPlGKZmMnSGNIJL91ovayQe7
	dEW66JOUcko+CzsVcY5wz/E2vQ==
X-Google-Smtp-Source: ABdhPJzzEsr0XHtaGnvSmOhYw3x72IlDrdcBdqtXlPMYyNLq6lboYJOf6Iw0GGK7YQl23lZQJbNcQA==
X-Received: by 2002:a63:fb44:0:b0:372:9ec8:745a with SMTP id w4-20020a63fb44000000b003729ec8745amr9391206pgj.551.1649298074079;
        Wed, 06 Apr 2022 19:21:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:125e:0:b0:381:47b4:f6dd with SMTP id 30-20020a63125e000000b0038147b4f6ddls711523pgs.6.gmail;
 Wed, 06 Apr 2022 19:21:13 -0700 (PDT)
X-Received: by 2002:a05:6a00:248d:b0:4fd:e026:f4c8 with SMTP id c13-20020a056a00248d00b004fde026f4c8mr12025013pfv.21.1649298073153;
        Wed, 06 Apr 2022 19:21:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649298073; cv=none;
        d=google.com; s=arc-20160816;
        b=vro4uuBx9ynQdej4Sn4gOLjMlu3CYopjCqE+GFTPE09j5b4iqqnlUo9BvXX/9Tn+Kb
         h04xDRtckZCic8oSSkwep4j4owM3Fj1MDtMDFHKgrLYD9dCNZYbtk3AL5xZzEmeuzC3+
         iGdVXG2wMdVS6rSpE9NMi5B3Cy5DxwBdrxNE+8cjnrj0CFWbnreWQvS6aM3WnknzI9uH
         NZMHsecI6xZXUN7+Wn48V8jvCKU5DGZU/8ornT/sFss6rC82PIUnA/DylgS4sslCZRbL
         CJQbHlY7U6/sWzCcwdi5Q5FQfcwm/ZPyTlGkrcJYn0YO3bXBWTl1uL4u0duanQRIS/qU
         omHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=P/4JwCqCbwxSC25Iz2CtjG6yHzvtsoQdZpxKujSjQmk=;
        b=by7oOXLDPiaqj+Lvg6z/vy28LhSA7rnhtMhqio1Nb65yqafzSJHhTjaOnYqzEr4Emr
         Kq3vaqcdmrKRLlwTK10HjIBNyeVOXXsnpq1idZCng2J6MXBWX6DQ+W3MvQA/FQoxEA6W
         pcqRa8bzhoEOx9QsxtCtBGQGBA6ZwqGwNUTrRqFH1+CuIy/OjvWssaGceWtmQWbNNa0y
         1hhu6CirV3JS/gHgzNYmHhOoG4NjzO3xQthobkNSfgTWNrCQ9dGmOhaa3/rdq89VKZhR
         zBmHKDeHbAFB2yv0mxObAhghLCqfol8Jjp9TPaDvYrSKT9HtUU5WWy4Bnepjzv+Ubsn/
         7NuA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Received: from zju.edu.cn (mail.zju.edu.cn. [61.164.42.155])
        by mx.google.com with ESMTP id c7-20020a630d07000000b003816043ee19si17531442pgl.14.2022.04.06.19.21.12
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 06 Apr 2022 19:21:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) client-ip=61.164.42.155;
Received: from localhost.localdomain (unknown [222.205.11.114])
	by mail-app2 (Coremail) with SMTP id by_KCgC3LxeVSk5isaRCAQ--.13076S4;
	Thu, 07 Apr 2022 10:21:09 +0800 (CST)
From: Lin Ma <linma@zju.edu.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	mdharm-usb@one-eyed-alien.net
Cc: Lin Ma <linma@zju.edu.cn>
Subject: [usb-storage] [PATCH v0 1/3] usb-storage: alauda: fix initFunction
 error return
Date: Thu,  7 Apr 2022 10:20:58 +0800
Message-Id: <20220407022058.3741-1-linma@zju.edu.cn>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CM-TRANSID: by_KCgC3LxeVSk5isaRCAQ--.13076S4
X-Coremail-Antispam: 1UD129KBjvJXoW7tw1kZFyfJr4xuryxCr43trb_yoW8Jw4Dpa
	n7Ww1qkFWUJw4UGr4DJrZrAa4Sk3WxJry3ta9rC3sYvrnxGF1xuF1xtFWvkFW3JF1fGF1I
	van2gF45ua4xGF7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUv01xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AE
	w4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2
	IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW0oVCq3wA2z4x0Y4vEx4A2
	jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oVCq3wAS0I0E0xvYzxvE52
	x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUJVWU
	GwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI4
	8JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwCY02Avz4vE14v_Gr1l42xK82IYc2Ij64vIr41l
	42xK82IY6x8ErcxFaVAv8VW8uw4UJr1UMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I
	8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUAVWU
	twCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x
	0267AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_
	Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUb
	pwZ7UUUUU==
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/
X-Original-Sender: linma@zju.edu.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

The initFunction is called when probing a new device, its call relation
is like:

USB core: probe() -> usb_stor_probe2() -> usb_stor_acquire_resources()
-> init_alauda()

That is, the error return of the initFunction should tell USB core what
happened instead of using error code like USB_STOR_TRANSPORT_ERROR.

Fixes: e80b0fade09e ("[PATCH] USB Storage: add alauda support")
Signed-off-by: Lin Ma <linma@zju.edu.cn>
---
 drivers/usb/storage/alauda.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 20b857e97e60..747be69e5e69 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -1104,7 +1104,7 @@ static int init_alauda(struct us_data *us)
 
 	us->extra = kzalloc(sizeof(struct alauda_info), GFP_NOIO);
 	if (!us->extra)
-		return USB_STOR_TRANSPORT_ERROR;
+		return -ENOMEM;
 
 	info = (struct alauda_info *) us->extra;
 	us->extra_destructor = alauda_info_destructor;
@@ -1113,7 +1113,7 @@ static int init_alauda(struct us_data *us)
 		altsetting->endpoint[0].desc.bEndpointAddress
 		& USB_ENDPOINT_NUMBER_MASK);
 
-	return USB_STOR_TRANSPORT_GOOD;
+	return 0;
 }
 
 static int alauda_transport(struct scsi_cmnd *srb, struct us_data *us)
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220407022058.3741-1-linma%40zju.edu.cn.
