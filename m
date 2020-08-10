Return-Path: <usb-storage+bncBDU5DXUG4MFRBDMMYT4QKGQE5ZRZGKY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x647.google.com (mail-ej1-x647.google.com [IPv6:2a00:1450:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B97240373
	for <lists+usb-storage@lfdr.de>; Mon, 10 Aug 2020 10:32:14 +0200 (CEST)
Received: by mail-ej1-x647.google.com with SMTP id i4sf3575850ejk.9
        for <lists+usb-storage@lfdr.de>; Mon, 10 Aug 2020 01:32:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597048333; cv=pass;
        d=google.com; s=arc-20160816;
        b=ftoEH0PBfxE3QaU9YCg8HrPnwCLvUTmmc9hUm12kKpFx04upvlTI03TcxHu967efbx
         J932wizggRDY0CU7pBYjKtjpvuhwyzqoQE/LQwCNCiKAeIhvkt4mYXjEaq9l7BlvC6iD
         xsr+iQqghQSuasoINv+Lgz/t37zyM/x0M7uHfKwXnFOAmbEuPHFfTkHX3RH+942+4GJy
         53ebjftVTiiuhYY+jjqi8bDafm2qnQTsoIC0AnzxtoLqV4zYZ3/WayNZB2OtcapSc2Yg
         1e+7V4PYH5b3KIfPhfYV+A9rbCtv0yt6FkM5lI1fZDqGv+4xt0gKZt5+LbNmWKUCHt/R
         CqCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=eph0mn0jIpL704ndVcVKWsf0go0fuRlyp+snbDKlzjU=;
        b=HJd1/JFgbgo3FMdaIN1jfKvnyc4Cmmr4PKal7DqyiQ0gkWr69CfU9ya2r4TrXLAlYN
         081TnbybdVAu27QhkBVL4/R13f3sExZWImCNQHs5tEc79fFw6FTJEquhK32KElvpWJOi
         k9HTli4/1E6NZG79rEr3KuYlZfUQJtTm0+bExnf6D1AkhQVnEA7ZSEYltZUaK4ftLd4w
         gfZdnx9gXcQLOgqIBXAY7VPRT86FCvIOq91LncbiGRJp3L9LXdnDebGubymIOuJU9mZq
         MYMe9wqTpKZY+rpro2Vb0CcaMc/ZuMmiy/GLGboU+h+T+UONXX9iG2ZKfQqe/Kq1jBTi
         ZvEw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eph0mn0jIpL704ndVcVKWsf0go0fuRlyp+snbDKlzjU=;
        b=JKCBq1lt/00dD3tFHPRtCFbWKdE9LrmxhtzRCO6Suum25B4uwUGjM3UZ3biH69zwiB
         fBzyQWaJ8InuCJZZHqE5kuHqDSIkpVEV2msCk29P4u9Kx0oYtZoSd8YSUP+sPahDawjG
         RZhdTTacd/en19G4AUYH3VgE4rvWcsfri/+24=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eph0mn0jIpL704ndVcVKWsf0go0fuRlyp+snbDKlzjU=;
        b=kGHBiwU4Fq8vmHCUVjIY+PCzBhXd++MSoqz4cPswRzvdCTkXMYJKwje4FxP0en6VNa
         wVBCu2ZnrTiYNKfU99jtwjnEBrLVa35VrE5sY92SqVFco+CSH6t2DtwhId1ZEr2eYojO
         vcFK4t3JuOCWK/kUJVcNKwZP6AYcsCv2hdYy34KQlw3g4FMhNoVuYG9UW814LS7wRH97
         Nh32pI5j47wNa97MLJ/HihNc5Y7ofa3/Wv8K0cAt9lywQL0XFoKBck2t//MO2VpUnABF
         F+B/nL8ZypzSeW4Fk8BMZYPLNZSp/kMRLbUHI/dCymx7gj4OPQRYYlhzIBm9P4cl5pHg
         Jowg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533hKnCuKDJFdnaeWoPjWzk97wfracm+ZxgT8BR3llEyQO+0XUIF
	yB4xIJePp0kFy3sRRuZiR95Oiw==
X-Google-Smtp-Source: ABdhPJwVPlrApgsQDDE4xXgYNSXy7uOClfpzWL3ty8UV1jiSjl6QzkGtS71y4MlNL9D3TbnLA3tInw==
X-Received: by 2002:a17:906:b890:: with SMTP id hb16mr21666827ejb.376.1597048333689;
        Mon, 10 Aug 2020 01:32:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:3404:: with SMTP id c4ls562633ejb.2.gmail; Mon, 10
 Aug 2020 01:32:12 -0700 (PDT)
X-Received: by 2002:a17:906:c7d3:: with SMTP id dc19mr20531905ejb.495.1597048332851;
        Mon, 10 Aug 2020 01:32:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597048332; cv=none;
        d=google.com; s=arc-20160816;
        b=BsWC40B/mZNplh3sZ0K5FCDjcdgZQfznjAiYVtV2DTS23+HpC2YDY8kCqH02svor8P
         Qw09eh0B4myjiJFh/ubsKHwNz6I5W/oIK50kdG/2a+vA4R199i+kpV7aUMBaQHuMHM4A
         ELziG8k2Ax5M/Llbf1x6FrrHqKAqb8oUXNvn1aOgnFR+W+CJtR3dAe/oL166ayJrrk4V
         pP9iFTchhrDk7SlEoqwDrLRtLPq/i1s8bji/AmV8l/a/b2TlpHZTUtiF4VLNWz0JNc0b
         hvqdF/C48nmRmEI+i9xqjfkDEHWh7PKQm3ZSjOk+U707ivhDOljSg+iguLZJA4QlLtPK
         AkrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=wwyAim/NOmAvQRS+xSKthsvVGDlBUHjPBAt42faMyG8=;
        b=Lo9Dk35+vg573xzZBxVyE03sL3vsOSA8QJbvFBq4Q5Nw8WoKP0HLapDtx5/S/OXB0U
         WFsNiGYZhZ28Rq0+rzkVOMYPoxdN4y2V/m8qRAkMakgWUciu1S1wMnYRJXAArqvWFTTU
         dIgmhGVk76QXktgJSzuKH43hENmptMEzNzthGeYUOAs+5/UTQGEPdSoDhgt9g371mkhG
         8myaQdMgRUr4gcDM+qOTDydcV5na+LXAMBtd8A4xWyBx6+7n/NB0uKpHBjmaRiHGBecf
         Sv0+o+pu/fOdtj7k8XjZ6h2uTF08LBnh8MM29RwYe2lVs5iM84PVj0Jk70o3h9/H6wWw
         zLPg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by mx.google.com with ESMTPS id ly14si10180969ejb.369.2020.08.10.01.32.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Aug 2020 01:32:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
	by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.86_2)
	(envelope-from <colin.king@canonical.com>)
	id 1k53E3-0007V4-Ai; Mon, 10 Aug 2020 08:32:11 +0000
From: Colin King <colin.king@canonical.com>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH] USB: storage: isd200: fix spelling mistake
 "removeable" -> "removable"
Date: Mon, 10 Aug 2020 09:32:11 +0100
Message-Id: <20200810083211.48282-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: colin.king@canonical.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of colin.king@canonical.com designates
 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

From: Colin Ian King <colin.king@canonical.com>

There is a spelling mistake in a usb_stor_dbg debug message. Fix it.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/usb/storage/isd200.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/isd200.c b/drivers/usb/storage/isd200.c
index 89f5e33a6e6d..3c76336e43bb 100644
--- a/drivers/usb/storage/isd200.c
+++ b/drivers/usb/storage/isd200.c
@@ -1383,7 +1383,7 @@ static int isd200_scsi_to_ata(struct scsi_cmnd *srb, struct us_data *us,
 				ATA_CMD_MEDIA_LOCK : ATA_CMD_MEDIA_UNLOCK;
 			isd200_srb_set_bufflen(srb, 0);
 		} else {
-			usb_stor_dbg(us, "   Not removeable media, just report okay\n");
+			usb_stor_dbg(us, "   Not removable media, just report okay\n");
 			srb->result = SAM_STAT_GOOD;
 			sendToTransport = 0;
 		}
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200810083211.48282-1-colin.king%40canonical.com.
