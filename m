Return-Path: <usb-storage+bncBDTZTRGMXIFBBSFQVO2QMGQE5NJRBMQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D162943C34
	for <lists+usb-storage@lfdr.de>; Thu,  1 Aug 2024 02:35:23 +0200 (CEST)
Received: by mail-pj1-x1048.google.com with SMTP id 98e67ed59e1d1-2cb600e1169sf6378953a91.1
        for <lists+usb-storage@lfdr.de>; Wed, 31 Jul 2024 17:35:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722472521; cv=pass;
        d=google.com; s=arc-20160816;
        b=IL2FZk7BinTZoXlgvzQfTD9YQx9Lhy+O7gw8z20q/2GNb2FlxiL4h6vTsc0nqtDQSy
         0OmFxs+XC01AGLYhaU+XUMm3V2xAU7ZtpR7VLqEP+WIH2dO64cnEuOKyM/dfRAVqUv24
         nK5gyvCaZL0bPJ7w8alUNLJGWhVDUQ7wxefikt+NdnAj1JqM5lW+eQS1eBFYYypImO1t
         4ZYI7BhAyc5jFAwRrXYe2YhJ+nw8Bv3HGQRrDnaGE5u7roN/urpRen//jGgpC8X0jFLK
         DJkvNJ7FAX0LKwqZD+wiWCuOOkUMkwS1GEIxBQVjBEF5bplcnMvuN33urRWuHyRfhg8z
         0mFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IDSZW0yN7JGOBGmt3YZ6AolkzjOf4NUV2d+IWjUl7c0=;
        fh=SrrhEWjKmTyyyNk+JLNrgDHz7QOTZB+JKXIl6wq847E=;
        b=oRN/1H7KRzBsybbtwm5esSz1TKTElpxssplactTi7bvjxGb4Do1DlWQUvs/O5AY2pk
         s/qge2V2n6p8XbCONPPYCMUh4vF81ow7dqdZUNP0jkIIiFLHeFoaArkV6xa57mXWZydi
         Xl/fRHS1OPGbayR1Ip8TO/Z6i+rE3mO0aTdcQftcivi+S3pSMkXhi6c4vbV5E696zTOb
         ctngHXB1nBr6UWp1zTietpOqU6Ra5sdKq3Jwc3Lc1YcMHT6ql2thvay1biOwBSFU+DmG
         JP8+8Q6EXBPM88DSlTsXBPJ4leizAgP34wBaal1NSkilRek4xIvj2i0U77j1lpqUE6WY
         TQ7Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Qac840hd;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1722472521; x=1723077321; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IDSZW0yN7JGOBGmt3YZ6AolkzjOf4NUV2d+IWjUl7c0=;
        b=G6S+datk16WSr/tC72jBGMMfYHUzmx1foARSRAVIcbgQrW1eY7E3mG3WAalVzHoKab
         3y7xZQG1WqewP3wuIxQsHKjQhAirbKk7el1UhFaMkIzreZMvZt2DZ7ob60IoR4EmZ4bu
         J63IQCvpKLjEdTjzu9+MYHdhiDCWDebUQhOkw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722472521; x=1723077321;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IDSZW0yN7JGOBGmt3YZ6AolkzjOf4NUV2d+IWjUl7c0=;
        b=LIFZOs22Nmh/TsxCY+QxBMcvw2K3LK7zRxdCGREkKfjYp7DLCXUqCtjGHt/j+LCrLe
         8aV3dvNI8gpVZIZuG+GBbaB+7dgJvoN2vO1Hx8TLlc6d//9gHSCptzbknKs1d9qehm9q
         WF2ZLFTCZVjuXlHLOKursV2yiYRKr5W60MH80RWKZvHP0cjRAWrtYdUSlnegOttaO2Bs
         K92bRJJoLlKaa5LgvN40Cx0p4GyB4CvcTj6ecHNcYdI62+ZptzS5JQmNcRvVpQKYRSSd
         fQbItZBni/RaS2p1V63BSaz2qWZsQQnHivc/3lCB6aZDFIJgn+IFcCJZLKQqK19Ikx0H
         X3tA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVQ7VE9PDMZucYg0I002hpw/oXmFDmR2G+IL7lazBLcn6f4g/pCefpkDJHJXGxTvZIOZe/PdqfSoRLtpBidlrWTD7YsMViwVO3i
X-Gm-Message-State: AOJu0YzMrLm/iM7hY7xMN61/vXKJ92Ue/3sJ8vH8vbIRaZRWaceWXzX8
	P8pV6L6k61oiDiY2AzOsgojt3uTXc5RVBYJi+Uy2hrt3LScqTaT8g2paUApGqxo=
X-Google-Smtp-Source: AGHT+IGqMR8uh8sveGyBuz81RF+v8Nl8MLGEW2HowViwLQuJjYwkvxJApfcvhrsH+imXmFLFR4GngQ==
X-Received: by 2002:a17:90a:bb8b:b0:2c8:ea7b:8891 with SMTP id 98e67ed59e1d1-2cfe7b2d8abmr1096979a91.29.1722472521147;
        Wed, 31 Jul 2024 17:35:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:b305:b0:2cb:5bad:6b1a with SMTP id
 98e67ed59e1d1-2cf20f48c63ls1364579a91.0.-pod-prod-05-us; Wed, 31 Jul 2024
 17:35:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXNsiqndTIvtZ4ntk4srxWJ0ryE0eOSIEtHfmYABhyIH1fyMHdGb0Y7dmyDoCInKN8q4ELc1dZ3qITPJCk985r1f3tdZfTXzRHb3ybFa3vUkZ3iKE8=
X-Received: by 2002:a05:6a20:8413:b0:1bd:2a8d:e25d with SMTP id adf61e73a8af0-1c68d296ab0mr1154440637.47.1722472519776;
        Wed, 31 Jul 2024 17:35:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722472519; cv=none;
        d=google.com; s=arc-20160816;
        b=iQuie0ZS4/e90TNGvXMnu2i/crNmLUTq5uj7B/+ikyG+6QwrAY3VkKFHrOeEVHpsBH
         1sIvX22BtY0gzLbkFPBzI6Xi66Nol3qxbTGTvuOX6bfQLBMEWsGMzevn8tasI6ywug6A
         DQzKNTMPNoHfrlOj/oK5KNkWT3hyWnIsnCPwv0MIZORWwHL5Y5B9/kI7qTJ9wXQ+eGnT
         h9wGo289qdz/uPygt9H92zb6qyJkiLVqTRck3wEN4mKhbbysG1jiAyqCqtI4k1Kc1zmg
         sNIcLZoiVrqT1UxGi8RSDt0sIZhhibc/GHK/I1yM5DbDK6Z6WQjGHMXX1269OGC4K8V7
         ahSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5dMU9jvtt268lhCtrlC1OGGL874A+a5aRLF3HnPtS78=;
        fh=jgkb7am38yPjzZXkQAVozurBPG6OhskQIcxQ3YzqA1w=;
        b=MuEbtu63qFZ4z36vjG6mJzckAYMvTm/gqE7qdTphLQE9zUKunuACyzfJkjzgmo8qVQ
         jZBMfQyAqVVJ4FZY0bR6IQ2vWjiKiiOC8O/X5izCbKGLYTw5OWNw+/VxT9WtJMUKxxKG
         K0nZo2tNOPiUAcij5RtHn4aT7VZO8qFlRtEJ0yCKt7HYAfXPX/RR5ZptJeOJmMGEIbXP
         4Zp/2A3H91rWP1Ldot19WAm6sThzWi8DZp+rwsQ8gLYBvaHuPMbZiaFmufxNl30xHTDu
         b35hgH40LbCcxDJsVde7MQCIr1o+LiVoDAW7Ww6ujSjFf/gC+Lj6BghDJU5PgXk1DsR3
         GBGg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Qac840hd;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id d2e1a72fcca58-70ead837bd2si15610872b3a.209.2024.07.31.17.35.19
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 17:35:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2A8F5CE1872;
	Thu,  1 Aug 2024 00:35:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2809EC116B1;
	Thu,  1 Aug 2024 00:35:16 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Shantanu Goel <sgoel01@yahoo.com>,
	Oliver Neukum <oneukum@suse.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 5.15 37/47] usb: uas: set host status
 byte on data completion error
Date: Wed, 31 Jul 2024 20:31:27 -0400
Message-ID: <20240801003256.3937416-37-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240801003256.3937416-1-sashal@kernel.org>
References: <20240801003256.3937416-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.15.164
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Qac840hd;       spf=pass
 (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted
 sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Shantanu Goel <sgoel01@yahoo.com>

[ Upstream commit 9d32685a251a754f1823d287df233716aa23bcb9 ]

Set the host status byte when a data completion error is encountered
otherwise the upper layer may end up using the invalid zero'ed data.
The following output was observed from scsi/sd.c prior to this fix.

[   11.872824] sd 0:0:0:1: [sdf] tag#9 data cmplt err -75 uas-tag 1 inflight:
[   11.872826] sd 0:0:0:1: [sdf] tag#9 CDB: Read capacity(16) 9e 10 00 00 00 00 00 00 00 00 00 00 00 20 00 00
[   11.872830] sd 0:0:0:1: [sdf] Sector size 0 reported, assuming 512.

Signed-off-by: Shantanu Goel <sgoel01@yahoo.com>
Acked-by: Oliver Neukum <oneukum@suse.com>
Link: https://lore.kernel.org/r/87msnx4ec6.fsf@yahoo.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/storage/uas.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 11a551a9cd057..aa61b1041028d 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -422,6 +422,7 @@ static void uas_data_cmplt(struct urb *urb)
 			uas_log_cmd_state(cmnd, "data cmplt err", status);
 		/* error: no data transfered */
 		scsi_set_resid(cmnd, sdb->length);
+		set_host_byte(cmnd, DID_ERROR);
 	} else {
 		scsi_set_resid(cmnd, sdb->length - urb->actual_length);
 	}
-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240801003256.3937416-37-sashal%40kernel.org.
