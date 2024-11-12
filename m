Return-Path: <usb-storage+bncBDAOJ6534YNBBCFEZ24QMGQEGCFWAXY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 1440F9C5F19
	for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 18:36:10 +0100 (CET)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-460df63f190sf85577991cf.1
        for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 09:36:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731432969; cv=pass;
        d=google.com; s=arc-20240605;
        b=bJwAxpItcVmtEPRrrGE/Dl/0oovmuh726bXAr+EQRXlVZA7gP1YP/MXAhZPwfA8PTW
         1cirVh/P9Z4h+taKvXVI29FjMo2824lpMfvbwLJVfaNHP9C9fPiNq+ypxfZiUG5FQkDe
         Cwaq7WI+VTICMamHum5tPPJe8zcR2xpYTlUPBGvgMTuod7+DXxtri9fg9TGnt3jw434n
         UJcvuY7k6Zy0GjHHDQJSp7+aI4DrD/BH/oDGotWj66JiMOvIUg35Ib5McmjamQH9Ej+e
         b0xj8hvbz02j82xl12vNkWRsW28Jv5auQy0/+iVZ/bCiACKnhzFAtmVzaexKsOsMAMGj
         zysQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=YrkjApcS+nBqL88wlcuyTgwHgVWIak0n8zdKdbw4CSM=;
        fh=6giP7+7VY+of3fLH/cSl5djlF90SEIk1qSnpubnm3s4=;
        b=MqhtcJAk4Bc7ChruX2J8Q5621H3BfiywyCViARgN64GNxqwMxvbWeZLBw5LjBTBFu5
         Xli1QRU5Fo2rgwgdPzYa907TCBmU3GOrfb9YZJ9e7p21uzrso1Ys7QInGszcTnSJwLTm
         3Y6pJJXnedq5xqAjYp0hvj4Zg9mSBknkgDE2cZU/QXTGB+hD+DdaJuK49IZIowvrEVVh
         bh/zCfrtJSwDKdYzdS9/xcyyCVcb/kq0NF/OQyXDK7ZXVWBIhxqpBDFNHvYlaGjESboA
         aIMrBotvjFsxPBI+1ce7knhN6R8UPnC0UIG31MWzcYaF9GimQDbQRgPn1NYeT35D2pvE
         4xwg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=AuoPriwh;
       spf=pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1731432969; x=1732037769; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YrkjApcS+nBqL88wlcuyTgwHgVWIak0n8zdKdbw4CSM=;
        b=jgU1nnKUuUBbCMbYrAuXMTYfTkRE0UIVR6j8W6dOOzHoYyUQW1PLdi0RZTK3QXJOcs
         rSQuza1UeQXFU5C7gGV0M3VkiW2m1B28SMJKHULetgV/VAtJVUqbqpQHlu+cV0aYMEbj
         dQ0+C0xedjc/YSha7XDWo/pLJZD0z43WHmAEA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731432969; x=1732037769;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YrkjApcS+nBqL88wlcuyTgwHgVWIak0n8zdKdbw4CSM=;
        b=fvjEjjXTNI1aDqOwO11Mm6WmZdeKIDjUaXFR5JKQeiTNTlj/iu0CebJqPmaPIC1XxD
         TVtSTKxHFp99uuTwULToHC3uisQtlO8ZUtL+NjFj2brEH8hgp7oBZwhemOr+aQu9XTCf
         gPJfFo9X0C9Tzqh7FZbd5BUQiM6k6P8In06UmzghTFmlISm4Zfs0iVQBawbmTwksNDoS
         toZLeUnt5xBphe1ba2Qr8rWttjcW2ERgONu0k+InAfDteFlhL+93rM+uArpY9j4yaAgg
         Q9RUva3ESmrYPf1t115voP7OdogTTyILo3t/8AI5pbAPi+qo0vfJHTsRc0o4TnwtFllI
         BHCg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWPYC133TxsdaiQBIU3BxGlVZO+31Yd5wuQaJpuEockuvb+owXxqTiig41AtLjBBXeW56uqMA==@lfdr.de
X-Gm-Message-State: AOJu0YxxBDE2EyyNNfLowEWXqC1FzumCtz7PQ1ts9XyyiJ+beRqKHvYm
	1we7IlhphHX3bOMcweoyUVYq2W97cECijK3tlQ+naiF1a8nC+VAMANNMY60RvlM=
X-Google-Smtp-Source: AGHT+IGwemOgP+6yl+//L5sgqXmeaegRzyEUvRl8mDvg3a4B7s66PqPODJK6Yt5rhoC+O9ChElJ6+g==
X-Received: by 2002:a05:622a:4e95:b0:461:22f1:dd17 with SMTP id d75a77b69052e-463093ecc76mr232383431cf.41.1731432968855;
        Tue, 12 Nov 2024 09:36:08 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:1920:b0:460:78da:7fa7 with SMTP id
 d75a77b69052e-462fb129bf7ls92355681cf.0.-pod-prod-03-us; Tue, 12 Nov 2024
 09:36:08 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXfnhEd+drx0uf29MIFMnuA4LGZ+0FxzoG3Ye5xF1pALTV5OCfbscaCRCLtDqnAoGrsBhMHCpEx21mIlg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:f02:b0:7b1:14ee:2948 with SMTP id af79cd13be357-7b331dbf337mr2572238985a.41.1731432968252;
        Tue, 12 Nov 2024 09:36:08 -0800 (PST)
Received: by 2002:ae9:e106:0:b0:7a1:d643:94b4 with SMTP id af79cd13be357-7b34c45cf34ms85a;
        Tue, 12 Nov 2024 07:58:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUIwSc7OV8wmN6KfFKkajSMzXDqJv3meH/edO3Jy/c+EaMeMveSMrF3/ry3snr1XSWary/blpLdyr9udw==@lists.one-eyed-alien.net
X-Received: by 2002:a5d:64e5:0:b0:37d:54d0:1f20 with SMTP id ffacd0b85a97d-381f18673e6mr15009540f8f.24.1731427114705;
        Tue, 12 Nov 2024 07:58:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731427114; cv=none;
        d=google.com; s=arc-20240605;
        b=geFII4PppZTBsoffXTSV25zDpiE3QYdPsEhzfgDcmJR9McNFirsopK0AZ5h6GN/KCl
         ipHflWIbLhz5o2u9fv2OqIZuLJ4hGiRTlrSpqZHUBTWF+iBwParXAGC6XBUdAdTBi6fy
         dxLf2bs2knPMuMHsYlLf/y0EYxUjg0skv4ptmJRd8WkOoT5/QQT81U8L3vJntGcNi7MU
         y9fC3ev3oz4xHDVYYWeHeU9DfMqXaIQfDO76uPw9mOOMNhfnMa0sRJXd1GmeXs1TX4CG
         dcbH93GbjDEOvfCfvbYYhM7gIAjRUqpzUlWyEjnKEoB6iiOxakS93lPj96Erwv7In7sf
         13Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jKbcoc75O9Cb98zpsIShjH5Q68sP76O0sTpNDdmUgyw=;
        fh=DxfR+pEYJoJwE3ZaKpNJogd1jSueX++dq8jcb3XdmWM=;
        b=g/3bH/IwFzN96GkHlxI/7pg7qvQsKaJhRK/C7QxjS4mIKctmOY87s4Zhy4rtf8/euC
         5v7KAPE7FhZ2hFN0t491Mc4CJaA1C8cJSO5t0lPggZJGhCYBXayhYNjqoYlXjnp72kv4
         DjgFYXrc2ycqMZAR91ZR81XQTNLBX0E26fE4n4VD4amxsctfbyFVufqFg6Xc1mGki5Rb
         rPYEvZFk4o0vZ1UepNj1OXOrCpn2qtsPF5n37vpBAF+5vXeFahjZpZdBgPOcmA49hQdC
         KVOzUYwQJt2OqXqSqGJOlmnQOxj2ZfFg3Pt+B+yZ1G6TCKZzzW8FVD8d8RLyD1Drmuq/
         ZJ9A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=AuoPriwh;
       spf=pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id ffacd0b85a97d-381ed97c4f7sor3670440f8f.3.2024.11.12.07.58.34
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 12 Nov 2024 07:58:34 -0800 (PST)
Received-SPF: pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVs/aclwUN33zuqQR5TzhX53cRUZpyM3AYchkwnqj/qqIQyYLuXSPj5BQNKYbDlqSJGhftUubv1Y0cYlw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:402a:b0:37d:5103:8894 with SMTP id ffacd0b85a97d-381f1881319mr13351957f8f.42.1731427114129;
        Tue, 12 Nov 2024 07:58:34 -0800 (PST)
Received: from work.. (2.133.25.254.dynamic.telecom.kz. [2.133.25.254])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381edc1104asm15991136f8f.88.2024.11.12.07.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 07:58:33 -0800 (PST)
From: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
To: gregkh@linuxfoundation.org,
	andreyknvl@gmail.com,
	b-liu@ti.com,
	johan@kernel.org,
	oneukum@suse.com,
	stern@rowland.harvard.edu
Cc: linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	snovitoll@gmail.com,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH v2 3/8] drivers/usb/host: refactor min/max with min_t/max_t
Date: Tue, 12 Nov 2024 20:58:12 +0500
Message-Id: <20241112155817.3512577-4-snovitoll@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112155817.3512577-1-snovitoll@gmail.com>
References: <2024111251-spill-hatchback-72da@gregkh>
 <20241112155817.3512577-1-snovitoll@gmail.com>
MIME-Version: 1.0
X-Original-Sender: snovitoll@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=AuoPriwh;       spf=pass
 (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=snovitoll@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

Ensure type safety by using min_t/max_t instead of casted min/max.

Signed-off-by: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
---
 drivers/usb/host/ehci-hcd.c     | 2 +-
 drivers/usb/host/oxu210hp-hcd.c | 4 ++--
 drivers/usb/host/r8a66597-hcd.c | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index cbc0b86fcc36..6de79ac5e6a4 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -547,7 +547,7 @@ static int ehci_init(struct usb_hcd *hcd)
 		 * make problems:  throughput reduction (!), data errors...
 		 */
 		if (park) {
-			park = min(park, (unsigned) 3);
+			park = min_t(unsigned int, park, 3);
 			temp |= CMD_PARK;
 			temp |= park << 8;
 		}
diff --git a/drivers/usb/host/oxu210hp-hcd.c b/drivers/usb/host/oxu210hp-hcd.c
index ca3859463ba1..eaa34ee0a535 100644
--- a/drivers/usb/host/oxu210hp-hcd.c
+++ b/drivers/usb/host/oxu210hp-hcd.c
@@ -902,7 +902,7 @@ static int oxu_buf_alloc(struct oxu_hcd *oxu, struct ehci_qtd *qtd, int len)
 
 	/* Find a suitable available data buffer */
 	for (i = 0; i < BUFFER_NUM;
-			i += max(a_blocks, (int)oxu->db_used[i])) {
+			i += max_t(int, a_blocks, oxu->db_used[i])) {
 
 		/* Check all the required blocks are available */
 		for (j = 0; j < a_blocks; j++)
@@ -3040,7 +3040,7 @@ static int oxu_hcd_init(struct usb_hcd *hcd)
 		 * make problems:  throughput reduction (!), data errors...
 		 */
 		if (park) {
-			park = min(park, (unsigned) 3);
+			park = min_t(unsigned int, park, 3);
 			temp |= CMD_PARK;
 			temp |= park << 8;
 		}
diff --git a/drivers/usb/host/r8a66597-hcd.c b/drivers/usb/host/r8a66597-hcd.c
index 6576515a29cd..d693fdfaa542 100644
--- a/drivers/usb/host/r8a66597-hcd.c
+++ b/drivers/usb/host/r8a66597-hcd.c
@@ -1336,7 +1336,7 @@ static void packet_read(struct r8a66597 *r8a66597, u16 pipenum)
 		buf = (void *)urb->transfer_buffer + urb->actual_length;
 		urb_len = urb->transfer_buffer_length - urb->actual_length;
 	}
-	bufsize = min(urb_len, (int) td->maxpacket);
+	bufsize = min_t(int, urb_len, td->maxpacket);
 	if (rcv_len <= bufsize) {
 		size = rcv_len;
 	} else {
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20241112155817.3512577-4-snovitoll%40gmail.com.
