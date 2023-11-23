Return-Path: <usb-storage+bncBAABBP7H7OVAMGQEKVZ7NKI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1E57F5871
	for <lists+usb-storage@lfdr.de>; Thu, 23 Nov 2023 07:40:00 +0100 (CET)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-58ac3c313casf517149eaf.3
        for <lists+usb-storage@lfdr.de>; Wed, 22 Nov 2023 22:40:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700721599; cv=pass;
        d=google.com; s=arc-20160816;
        b=UL7GmjJlT1PQb0/mCNGIX1WRAwvIXbYhHEGduC3DMUPl5+KKtyZQEKRPN680EpYp0l
         BRVBOXY4IGiIzBnnzbM/Rx35lnRxgz5xFvAy0y0JoRmu9rE0weyT2sZkCaflSfDlpmOM
         w/zT+i1kPFN5TOUQnhDk7A+aAeFXUi+gmtIWAeAkVzCwKD00vMudLVZijebShtZrdI/U
         A1RSEGoaDShOz0XZmZv2w01K387SxKQIn6KRZqsCCpl4YNY0m+bWt12CapUWLxjU20UA
         fofSNmgXzJKaTYQK8iQD0pAR51emhji0qVpbEM34jPoigds6zFmI3SvtjZSy0i95imCR
         SgvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=fPtzWAa8HBv3Vs1XbzTfWmWYdRLuVyWant7xrqr3HV8=;
        fh=H9BNKxD/d/tAbpGhAMXCoGmLbu0jZq1JrpSkr5/pSqk=;
        b=VHVdklAXOqq9mU0j3p4X9MIgmIYVdgkjJmnHf+fxHOv1V9wiXChPvvb5PuLr8ArVqu
         x1+SlSZDKRIP9D4wcPHOVPSAtv3aAB27Zh16ZUMSRSvGMY8O3DVgtR3wxl1u/iPG/OgT
         bYDvah/xOndOnch+sPFxEIiQuYLyXayQhsAkrWG/ot6JC16vNfBely7sAUkV8dRZ7mbh
         ALrrs7YWeMvc0DTiNXwe7epPxVfbAGpth7XFfWPEo2dnV12s2tk1R25SgHZG2XXtgoVm
         3gI1Ue1gjGycgdolK2EjyKiBONtRU6TDV6kfboUsxQb6eOEKy2wPG/qUqBVm4uGabRrh
         pM4A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of u202112004@hust.edu.cn designates 202.114.0.240 as permitted sender) smtp.mailfrom=u202112004@hust.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1700721599; x=1701326399; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=fPtzWAa8HBv3Vs1XbzTfWmWYdRLuVyWant7xrqr3HV8=;
        b=P4vwc0MNg7+8wcNgGJI6upTNOK6UTE18Cx+z2DBK0jPxrFbLubsavrT5Ix1DWowb2w
         kjmnzzM3YW+JdVx9sWdeD8eauAyjpFRt6EtWp/y9JFEOq5QzA0VoV9Y9Z1ZJX8eiqGCP
         hiGhS4nXqD/B5u4Gr0sNQ0ceDkopANe4Trb1U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700721599; x=1701326399;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fPtzWAa8HBv3Vs1XbzTfWmWYdRLuVyWant7xrqr3HV8=;
        b=jyj4RKoUzc6zSjFko615tugRULc1SdKexZZkfsDSUdWMKB8YlaKin4DXSB6EOFzl4s
         B7VCel7LGQC71VSjMtsk+OvYLuBvAxL9NodocCv6OLzwODFyOmBIZJ1OWbxfAFzG0ZF2
         QNMLdgqjKCVlIIs5iY0VniGN29zcGGMUr6D9f4MXJTjQHeNxSI7eAk8Zk5KGzU/Ncakr
         KacrvQ657lodNaDzmJIYnzCocxr4ykCWi1l8w7/LVpUWFYN/oP5wFcNzzhNdwArZWGdQ
         pTLl2jN9fQFiFs/nCvczvtESGs2xKpkicnec9XExRaUV/F2BH4bb275zrHItC0sjhYC7
         65SQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YxRB72IrOh/sxtfqPfCe+He56a7qjOz6ZCIpDpyGsQLjRAN3kCx
	O+kWfIRAfpAd/egf4PnP3WXUeg==
X-Google-Smtp-Source: AGHT+IGE24VqRePaoBExrosN0bBZZHDdyn2Q6bCm4YHTEoC7xFqIdlSGQOXQi5R3G0UDelpg4NUweg==
X-Received: by 2002:a05:6820:1623:b0:571:aceb:26c8 with SMTP id bb35-20020a056820162300b00571aceb26c8mr4940242oob.3.1700721599561;
        Wed, 22 Nov 2023 22:39:59 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:5582:0:b0:581:e081:95d7 with SMTP id e124-20020a4a5582000000b00581e08195d7ls212632oob.0.-pod-prod-00-us;
 Wed, 22 Nov 2023 22:39:58 -0800 (PST)
X-Received: by 2002:a4a:e792:0:b0:58a:801b:5312 with SMTP id x18-20020a4ae792000000b0058a801b5312mr121639oov.1.1700721598725;
        Wed, 22 Nov 2023 22:39:58 -0800 (PST)
Received: by 2002:a05:6808:211a:b0:3b2:e349:d5c2 with SMTP id 5614622812f47-3b83d618753msb6e;
        Wed, 22 Nov 2023 22:34:52 -0800 (PST)
X-Received: by 2002:a05:6870:4c01:b0:1e5:89d8:81fb with SMTP id pk1-20020a0568704c0100b001e589d881fbmr6686294oab.10.1700721291735;
        Wed, 22 Nov 2023 22:34:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700721291; cv=none;
        d=google.com; s=arc-20160816;
        b=OQnwVB6zC3WB6cY/2oRWUBadGO78UTfvcO7Wa0XKEvf64JNh/3ZbjysEv/YuFaTl0X
         libH/3Rqvk0MoLGJrw+olEj1jC7HNRTsEMntY52khzYIgDJgA9EZrxudxmwJMpP0Bb1+
         8VfREIyr0Qriisa+94QPsFKPjzlNiBmlXjkN2Vet9FJfWBVNY1HvjKhxicjvcBp/MRTc
         iM+nzq9oW2XPpX6gynLs+b6sxOP1XqqIQPCOyWePHr+Ee2M4C2umf58MjiK2p1yzwZ+C
         zcI06nDbvN/nhraDzFzXBWl04H8L0YGDEj0pgJptMYE8MKlrWOMQrt/fMX3s7EkQl9S+
         ZDYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=jt0dPPM8lps0Czgxt4OGUzvfI05v41TNhtb06BPAcus=;
        fh=H9BNKxD/d/tAbpGhAMXCoGmLbu0jZq1JrpSkr5/pSqk=;
        b=J6nyO/yayL96Q5H63iqtXO03KEQ7CJ7cdTdWxMQiZb6ckn4jgP72gTJLYKlh/U5y1Z
         4capF2OncmuBX9crKNpuryv/EyDtCdatKTNjDmk/gtH85rB2icgR6HVN5mZy2LLEifjt
         uxkZuVc1bIvqMW1ox0xiPSBghXOYvhpF1Ct6lpALK854Adoo9ZQaWkIaAS+9pHyA2C4n
         +Wax65imW8Bx+CO4qVJQ73POb8hHMcdQhI9ldbhn1ry+KP6KVdsci/PcfqbLil4dG0I8
         pg/OurmPof0Nrq7FGpuTaLyxGZXqN8IaLY5EgFt6UWqMDOzdjeeF8htqTMZBMkz+/ERy
         RFkA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of u202112004@hust.edu.cn designates 202.114.0.240 as permitted sender) smtp.mailfrom=u202112004@hust.edu.cn
Received: from hust.edu.cn (mail.hust.edu.cn. [202.114.0.240])
        by mx.google.com with ESMTP id j6-20020a056a00130600b006bd27e41c17si650244pfu.314.2023.11.22.22.34.51
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 22 Nov 2023 22:34:51 -0800 (PST)
Received-SPF: pass (google.com: domain of u202112004@hust.edu.cn designates 202.114.0.240 as permitted sender) client-ip=202.114.0.240;
Received: from hust.edu.cn (unknown [172.16.0.52])
	by app1 (Coremail) with SMTP id HgEQrAC3vm5g8l5lS44qAA--.43859S2;
	Thu, 23 Nov 2023 14:34:08 +0800 (CST)
Received: from pride-PowerEdge-R740.. (unknown [222.20.126.131])
	by gateway (Coremail) with SMTP id _____wAXoEpW8l5lbogNAA--.10822S2;
	Thu, 23 Nov 2023 14:34:06 +0800 (CST)
From: Ren Xiao <u202112004@hust.edu.cn>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: hust-os-kernel-patches@googlegroups.com,
	Ren Xiao <u202112004@hust.edu.cn>,
	Dongliang Mu <dzm91@hust.edu.cn>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH] usb: storage: transport: Fix indentation typo
 in 'transport.c'
Date: Thu, 23 Nov 2023 01:33:38 -0500
Message-Id: <20231123063339.2625684-1-u202112004@hust.edu.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: HgEQrAC3vm5g8l5lS44qAA--.43859S2
X-Coremail-Antispam: 1UD129KBjvdXoWrtw47tr4kKrWxWFW5Gw4Uurg_yoW3urbE93
	WfW34xZr15CFZav3W7KFyfurWIkw1FqF1q9Fs2q343Ga47Z3yrJrWqqw4Fva45Gwn8ZFWk
	Aw1DXrWrZr4rKjkaLaAFLSUrUUUU1b8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbkAYjsxI4VWxJwAYFVCjjxCrM7CY07I20VC2zVCF04k26cxKx2IY
	s7xG6rWj6s0DM28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI
	8IcVAFwI0_tr0E3s1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr1j6F4UJwA2z4x0Y4vE
	x4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oVCq3wAaw2AFwI0_Jr
	v_JF1lnxkEFVAIw20F6cxK64vIFxWle2I262IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2xF
	0cIa020Ex4CE44I27wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0EF7xvrVAajcxG14v26r
	4UJVWxJr1lYx0E74AGY7Cv6cx26r4fZr1UJr1lYx0Ec7CjxVAajcxG14v26F4j6r4UJwAm
	72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41l42xK82IYc2Ij64vIr41l42xK82
	IY6x8ErcxFaVAv8VW8uFyUJr1UMxC20s026xCaFVCjc4AY6r1j6r4UMxCIbckI1I0E14v2
	6r1Y6r17MI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17
	CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF
	0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIx
	AIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVWUJVW8JbIYCTnIWIev
	Ja73UjIFyTuYvjxUVCJmUUUUU
X-CM-SenderInfo: rxsqjiarsqiko6kx23oohg3hdfq/
X-Original-Sender: u202112004@hust.edu.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of u202112004@hust.edu.cn designates 202.114.0.240 as permitted
 sender) smtp.mailfrom=u202112004@hust.edu.cn
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

Removed excess spaces before the label at line 1063.

Signed-off-by: Ren Xiao <u202112004@hust.edu.cn>
Reviewed-by: Dongliang Mu <dzm91@hust.edu.cn>
---
 drivers/usb/storage/transport.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index 7449e379077a..8f236854c83b 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -1060,7 +1060,7 @@ int usb_stor_CB_transport(struct scsi_cmnd *srb, struct us_data *us)
 	 * the CBI spec requires that the bulk pipe must be cleared
 	 * following any data-in/out command failure (section 2.4.3.1.3)
 	 */
-  Failed:
+Failed:
 	if (pipe)
 		usb_stor_clear_halt(us, pipe);
 	return USB_STOR_TRANSPORT_FAILED;
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231123063339.2625684-1-u202112004%40hust.edu.cn.
