Return-Path: <usb-storage+bncBCUMB4EN24LRBL6IRXVQKGQEEW57SJA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x447.google.com (mail-wr1-x447.google.com [IPv6:2a00:1450:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F1D9C882
	for <lists+usb-storage@lfdr.de>; Mon, 26 Aug 2019 06:46:40 +0200 (CEST)
Received: by mail-wr1-x447.google.com with SMTP id a17sf9115262wrw.3
        for <lists+usb-storage@lfdr.de>; Sun, 25 Aug 2019 21:46:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566794799; cv=pass;
        d=google.com; s=arc-20160816;
        b=X45xI/s2P7qQ4lF0Ngy4CYFVU4QptghJRbYuX51vpgmlCgf9ryb+7dwlWKOhsK6ay/
         daFo1DXzY91vRT4rdOvTkm72PxuUgnxgtH5VoU5M/uaVfI/S5Y+KbkQL1utfDDpb/k/s
         hUY4JwTywBGM9c6UTMlutaGhNTvutDcCTBIyO19zzKQ4TAEdxhnuv6P3UfLjZG/GY0/Z
         uXBND7SEU5YEUpkXqUBVvyyeuP4GNxI8xmE2W9Ho0yDcCzg5gkvSZb4fdADrCBnBzayb
         c4J70gwzkzcDCzZElqhDfZ/aBsICg0ZvTlh51PFfoIHbJh9226oG3Zxe47eoKzPbMR+M
         ZhCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=fQdBhBAYUMauAEukgMgHlcLaJLZfuufDOnTUqpTsVNE=;
        b=dlLa2yXGnOwTIyKkqwhtrHy7rV8Ff8vv0TVWFe0khgxiiPSg0Htf2M9I6LjYzzD9Ma
         rl1E5fhGXwsna8n2BRfTyHG5hOkLssXFWVdqCoXcsuwaN6z6CrCQTxZTSWXKvoauGrut
         qT1xB2jiubg/tsL8blaY3EENwQ+QCHgu3p1NC705jF0car81o97IcJ5OEhSSBLmVABnT
         MAwCdjMn61ehekrBdHbit2/HwMqOw8RnWanolAZ47Tp3LpaY+hsgoJycQk73CJU+eTSd
         ECY0XBTsbxYHGYCnN8Oa3C9ZdSn8L4TrRkWGMMlGs/no2wU0T+25LTRY+V1Mem5KO1j8
         orZA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fQdBhBAYUMauAEukgMgHlcLaJLZfuufDOnTUqpTsVNE=;
        b=hk4PW1ie140/TxWSxfKllg4u8O49jsroNAK4doObM2EyJ0hZpUZ5zir0RQBxxSLEAM
         zLb6rNTm1t07nxjoFOhbhBUzWiO3U/UqcUjU3nKuqaoqdcpXfLBzbSSSEftltKZXnwqv
         JvD0SZnqPBu9CWplBVH8mS1+5o835SJz1rgUY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fQdBhBAYUMauAEukgMgHlcLaJLZfuufDOnTUqpTsVNE=;
        b=q0SiiyD5N2G4nqhYBeE5/xD34pMNxW5c813i02LHrgD5Fb4X/BPRF0B0g51SU/AoeT
         YxMJ8nSOYfn6gFnBF6/vnTPgeWPC/hHvcfg86zP/wEEsjVGgQmAHwHAMV4qM9KzRwT+6
         uAT3z5xI67+xdfYJ0r6qQ4lBR4ofCQtw/KY/LHxyqv+19Kv8eGYbO6NOzCiwq9+RkS6X
         KXsn/gGZze44Bb7HYsCQkwzjxqXBgOejC6N2sdIvpn0SzPfKPFff8r8f9MLWtzKRtq0P
         ODsnFQC4l+ipHeTRbnNJSXMkx7vE7eAhCnr3ecFCS1xXSa8W7gm3AfTJwbVk4Mbak331
         7i6g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAV8EO3jd8bUUU+iztSU6HFE/ZfzshBz8/DRYAKb1sEOeq1AcMrS
	cKAAE3Jo0XNZMa85TsJtubXJiw==
X-Google-Smtp-Source: APXvYqy522fPZE87Kt+6OIxDBoJBFI6adwXRPAEA8odqzhOjEFxVaylznflLNAJPxsc14SMvP0pZvA==
X-Received: by 2002:a1c:6c0d:: with SMTP id h13mr17704293wmc.74.1566794799730;
        Sun, 25 Aug 2019 21:46:39 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:5709:: with SMTP id a9ls4082601wrv.12.gmail; Sun, 25 Aug
 2019 21:46:39 -0700 (PDT)
X-Received: by 2002:a5d:470c:: with SMTP id y12mr19541891wrq.136.1566794798992;
        Sun, 25 Aug 2019 21:46:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566794798; cv=none;
        d=google.com; s=arc-20160816;
        b=HJDFl0xCobkZeDYhKR1VG1iyu+LpHlikeBXKzvA4Gm1gq1R99O9DlCwWiuy1vzvrE3
         kMnP03xV5HjIgh29cWRLglmIXCgvxVdYwfl4OHin6/zt8dhloyDPc4kG0eGJg9DOgaqi
         miKAFm+Y2jYZRnUDxC8lMPf1JiaUf1jR5DIvOnC7K2DFWhWHSnBt4vbVG1psm14vjb5o
         idUJSZxUo8wwpNHn+DTmiVyhmz43YRqHOpPx7kj7d4Si8275H5HuUVXD75fWyHF1XQrL
         p1eEeoC1wB7ycW2dLrEST7hdRiX8FJq+9wThij3T7anEJTtYrWUaNLxVKjkZkDiBkPH4
         WvPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=1/ceESkfrlfhf34xBQCG7xOdRywTmqU6AoOeU9cQrHo=;
        b=l98d0KCGvKzWsixWY2eAjqqglfjB5Wc1bfS+Rm/R2HPj/phViSXsBk1HJCmyC3oO0D
         b/FqZv0boMV/g98cBEKEdtRYMdep4LWdODY+00wZodYgOViE+y+yCAiL8TcNVl1v2jKt
         MIdRYwQLRh7DYT/bZLWcGR0dgkECVg/WhKq4svgQ04pzq1QOr2JhX1ZbnHFnkgFbmIUs
         ZM6eL9IDyVOV0qqXo0e8LyqdXzvIDK3A+flVD8zRcfNFZgXDkgNtnsjh743GiZlwx1q1
         aI+ojypdnkM8Arjl/EylBiSiCS08uRdZDFKfohGxnFHJ8YML91Z4cFmqmEZtJPXdP2At
         JLfA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by mx.google.com with ESMTPS id e4si8163062wrj.146.2019.08.25.21.46.38
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 25 Aug 2019 21:46:38 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of kai.heng.feng@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 61-220-137-37.hinet-ip.hinet.net ([61.220.137.37] helo=localhost)
	by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.76)
	(envelope-from <kai.heng.feng@canonical.com>)
	id 1i26tp-00014D-8f; Mon, 26 Aug 2019 04:46:37 +0000
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: [usb-storage] [PATCH 2/2] USB: storage: ums-realtek: Enable
 auto-delink optionally
Date: Mon, 26 Aug 2019 12:46:30 +0800
Message-Id: <20190826044630.21949-2-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826044630.21949-1-kai.heng.feng@canonical.com>
References: <20190826044630.21949-1-kai.heng.feng@canonical.com>
X-Original-Sender: kai.heng.feng@canonical.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of kai.heng.feng@canonical.com designates
 91.189.89.112 as permitted sender) smtp.mailfrom=kai.heng.feng@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

Auto-delink requires writing special registers to ums-realtek device.
Unconditionally enable auto-delink may break newer devices.

So only enable auto-delink by default for the original three IDs,
0x0138, 0x0158 and 0x0159.

Realtek is working on a patch to properly support auto-delink for other
IDs.

BugLink: https://bugs.launchpad.net/bugs/1838886
Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/usb/storage/realtek_cr.c | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index 4d86cfcc0b40..376f41d0cbc3 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -36,6 +36,10 @@ MODULE_DESCRIPTION("Driver for Realtek USB Card Reader");
 MODULE_AUTHOR("wwang <wei_wang@realsil.com.cn>");
 MODULE_LICENSE("GPL");
 
+static int auto_delink_enable = -1;
+module_param(auto_delink_enable, int, S_IRUGO | S_IWUSR);
+MODULE_PARM_DESC(auto_delink_enable, "enable auto delink (-1=auto [default], 0=disable, 1=enable)");
+
 static int auto_delink_mode = 1;
 module_param(auto_delink_mode, int, S_IRUGO | S_IWUSR);
 MODULE_PARM_DESC(auto_delink_mode, "auto delink mode (0=firmware, 1=software [default])");
@@ -996,12 +1000,22 @@ static int init_realtek_cr(struct us_data *us)
 			goto INIT_FAIL;
 	}
 
-	if (CHECK_FW_VER(chip, 0x5888) || CHECK_FW_VER(chip, 0x5889) ||
-	    CHECK_FW_VER(chip, 0x5901))
-		SET_AUTO_DELINK(chip);
-	if (STATUS_LEN(chip) == 16) {
-		if (SUPPORT_AUTO_DELINK(chip))
+	if (auto_delink_enable == -1) {
+		if (CHECK_PID(chip, 0x0138) || CHECK_PID(chip, 0x0158) ||
+		    CHECK_PID(chip, 0x0159))
+			auto_delink_enable = 1;
+		else
+			auto_delink_enable = 0;
+	}
+
+	if (auto_delink_enable) {
+		if (CHECK_FW_VER(chip, 0x5888) || CHECK_FW_VER(chip, 0x5889) ||
+				CHECK_FW_VER(chip, 0x5901))
 			SET_AUTO_DELINK(chip);
+		if (STATUS_LEN(chip) == 16) {
+			if (SUPPORT_AUTO_DELINK(chip))
+				SET_AUTO_DELINK(chip);
+		}
 	}
 #ifdef CONFIG_REALTEK_AUTOPM
 	if (ss_en)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190826044630.21949-2-kai.heng.feng%40canonical.com.
