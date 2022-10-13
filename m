Return-Path: <usb-storage+bncBDTZTRGMXIFBBRNTTWNAMGQE2OAMTVY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DE35FCFA1
	for <lists+usb-storage@lfdr.de>; Thu, 13 Oct 2022 02:20:23 +0200 (CEST)
Received: by mail-oo1-xc45.google.com with SMTP id a11-20020a4a80cb000000b004805cba57f1sf204869oog.11
        for <lists+usb-storage@lfdr.de>; Wed, 12 Oct 2022 17:20:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1665620422; cv=pass;
        d=google.com; s=arc-20160816;
        b=B2ZPj69qKfmtNvy+Z9ZKeQlA/EzWh8ifzLIka0K4EAWDxJgxMZyYvZMjrvby1KorPu
         FAJUIz1NOa52G+XUfevoLsSJ9IfCC8EUA50iyi7vodgdyH8S/MYiSg8qHWEiN/GPt+dI
         biq8cS8gR0P7MN01IwPFd75PKQLmVxk5ueE6jpOi0YNBWS7xA/J5rErKjyUvqFXJLINj
         GOTmJ3Kt1Z1g1mCd4vCJXUURHrR8ZyRvcsztL4Asrr4mfpvaCG+nnr5dTKY/egVyBMKp
         z+UmCuDlvteNOCEfE8NAdo72t3KBdhTwNDcBBxtSlwOk02/XP66tdO/ePwx9UYhHjYxf
         +27g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2lLNP+VT6U2Ixo3KpPj/VBjl8LvyYtDaadchPKqn80E=;
        b=SOr3/jXg+4vKRT8HlL9RKovPtkFARkJeIg/QoBfMLVLhaJ5wTj+z0jU9WO5GrYnZSa
         /BmL+x30IHnOGQf4CW5pSNVtZvfE9d+m4+LD+CHe14fG3hx2qqCJs8aVqHiO58yGYo1R
         aZxSbIMrCi5PnaD25YHxVuEP6rq7voRSFf8Ht437QSPKiUAoTSpa7YwzmJw07VJPN9BJ
         I6OP/C8fTVV64q0b6sxIgRnt+lt8ifq/JB/uHVVQXzghTqV1CiD7iFyzriVLTl7jm8wg
         A6QuDtY3NXkFEQ85eO9sPDzSweexYEHu/BYKLL9ZF3BC6L+nWOGi1G7oWgq22nDpVcX4
         PWNQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HuyFqub2;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2lLNP+VT6U2Ixo3KpPj/VBjl8LvyYtDaadchPKqn80E=;
        b=UK4YPEsra5IcwDNYnGAzecWnLRsAbcRSO3ItKg8RLQ35MQGa09ELs0LdT4g5g1UBJN
         zz6iJq4UI1EJrK3Sj+ibjH7znY9UJvq80nNZF7BrHj1xcmS6hracmokGVLY8GbwGf2WX
         3CFPBBjIIMH77zBfV6nUgmxra7SnRoS0cNtw4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2lLNP+VT6U2Ixo3KpPj/VBjl8LvyYtDaadchPKqn80E=;
        b=X7iDclHjf2p179r3brNNsZKYqWC2M/boZJsdMkZkDSV7ol3UKMEQ661IFslV9Pi2Ki
         86+WJO10A5PUylVOKtJwL1qgJCLZVmqJw84VcSVxB3F1lnI0CbZpIk9Ugq1YhKOiyPzt
         rGF9XvBoUepUOwh3Oft6asoVDzj1ovIMCV1K/fdpEoFeaMOqSSacUyjQCX3n5O3lm8/r
         WJQBduRH/dW0pKDUN1DdEqM4aItAA54y2y/U5UV/Xwn76JoEdDsFe2T34JPPhLf2N1LI
         pls462Dz9Dy1dcDpFlsCxv9WV3eLXtJ3fcCmji317TJVv7NXIHyAjtGP2lTTN2KlKVA8
         8KHQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf2EO5QwR2CdtVG8+qY4WrRlzgNLzsNy5moL9fGhdm6e+gqPEHgf
	vWNaGqqWo+LZPXUPXemmeTntzw==
X-Google-Smtp-Source: AMsMyM4yXLNGDL9BtdLjf/fWX9PVle2AIJsQxDrh64gpDodm4gVnfPCXTMIOkQfwj+BJajJ9b1/uPw==
X-Received: by 2002:a05:6870:785:b0:132:7895:b555 with SMTP id en5-20020a056870078500b001327895b555mr3881847oab.256.1665620421871;
        Wed, 12 Oct 2022 17:20:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:90c2:b0:132:a931:6a46 with SMTP id
 s2-20020a05687090c200b00132a9316a46ls150958oab.9.-pod-prod-gmail; Wed, 12 Oct
 2022 17:20:21 -0700 (PDT)
X-Received: by 2002:a05:6870:5803:b0:12c:c3e0:99dc with SMTP id r3-20020a056870580300b0012cc3e099dcmr3860844oap.19.1665620421342;
        Wed, 12 Oct 2022 17:20:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1665620421; cv=none;
        d=google.com; s=arc-20160816;
        b=Lw0zuquGEWXNKvts5Hj6C+KkILwuYwjMGiNuKEHTVMlRftEZitZ0nIPIfOfjfSb21Z
         rFw25vV5f9MoWztz7euUsSY8CLEvcWXYdoHJAbohiRYnon3Xeb6yiHBEdRaT//H93ReH
         fqbc2fTbewQBet1WnUe2Nt1LqVug/2geCJejx3WbWibB/JvTjZdbwnQFlXods8Aoxto2
         l97Tf8Z11vuaB6wEQnaG7R6jj5Mx51grBGeyXHMrM/hmh3hMM8+Bw3NAavYZebaz52F9
         hyUTVqjH1t8s5lvlkYmDGJ/UPSBAoQY0FvpYJGoM4ve9Bmi/69AmDWXxUpaLmMN2B+tP
         90Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xJQEd/tw+5bihUtS8xNDx4uOCFTFc7l87/IjfaVZf1w=;
        b=ow4MHTTg8zxgQhc21Bwb4B2ftbLd2XFRgf6WkUF35St0YFNUKI6Gg35VTG2oSkvgxT
         xrm/abpwovrnzh0+O2xk6/0dZlEoyKv4jZqiODNVbSgFxFNW5bTKZfF9j+cBh72Vbx+e
         OmTUsyeJk+lNx19r7lEGlgNR+5OKvADioDdqrqVUyQRhaD6FPHBJl51OULyGU9JAzclE
         tzEQ1Lca4q3Vbdf/ezXLgCzkOQ19pIWsL3TZSlaNTQsqJAU62HA5twSkdM+fa3J8Qhfl
         Y0PUPCoGdA6GBm6mYuZM2ZQlBofDgQYLs5GozGds9fCoqO1KHaf3Rl/ATQGI2JPpipc7
         GqCw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HuyFqub2;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id 95-20020a9d0668000000b0066192cb6ccesi13755393otn.239.2022.10.12.17.20.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2022 17:20:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 252CD616D8;
	Thu, 13 Oct 2022 00:20:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14BCBC433C1;
	Thu, 13 Oct 2022 00:20:19 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: sunghwan jung <onenowy@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 5.19 41/63] Revert "usb: storage: Add
 quirk for Samsung Fit flash"
Date: Wed, 12 Oct 2022 20:18:15 -0400
Message-Id: <20221013001842.1893243-41-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221013001842.1893243-1-sashal@kernel.org>
References: <20221013001842.1893243-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HuyFqub2;       spf=pass
 (google.com: domain of sashal@kernel.org designates 139.178.84.217 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: sunghwan jung <onenowy@gmail.com>

[ Upstream commit ad5dbfc123e6ffbbde194e2a4603323e09f741ee ]

This reverts commit 86d92f5465958752481269348d474414dccb1552,
which fix the timeout issue for "Samsung Fit Flash".

But the commit affects not only "Samsung Fit Flash" but also other usb
storages that use the same controller and causes severe performance
regression.

 # hdparm -t /dev/sda (without the quirk)
 Timing buffered disk reads: 622 MB in  3.01 seconds = 206.66 MB/sec

 # hdparm -t /dev/sda (with the quirk)
 Timing buffered disk reads: 220 MB in  3.00 seconds =  73.32 MB/sec

The commit author mentioned that "Issue was reproduced after device has
bad block", so this quirk should be applied when we have the timeout
issue with a device that has bad blocks.

We revert the commit so that we apply this quirk by adding kernel
paramters using a bootloader or other ways when we really need it,
without the performance regression with devices that don't have the
issue.

Signed-off-by: sunghwan jung <onenowy@gmail.com>
Link: https://lore.kernel.org/r/20220913114913.3073-1-onenowy@gmail.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/storage/unusual_devs.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
index 4993227ab293..20dcbccb290b 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -1275,12 +1275,6 @@ UNUSUAL_DEV( 0x090a, 0x1200, 0x0000, 0x9999,
 		USB_SC_RBC, USB_PR_BULK, NULL,
 		0 ),
 
-UNUSUAL_DEV(0x090c, 0x1000, 0x1100, 0x1100,
-		"Samsung",
-		"Flash Drive FIT",
-		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
-		US_FL_MAX_SECTORS_64),
-
 /* aeb */
 UNUSUAL_DEV( 0x090c, 0x1132, 0x0000, 0xffff,
 		"Feiya",
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20221013001842.1893243-41-sashal%40kernel.org.
