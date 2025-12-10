Return-Path: <usb-storage+bncBDTZTRGMXIFBBJ5J4TEQMGQEK4IY3CI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x445.google.com (mail-pf1-x445.google.com [IPv6:2607:f8b0:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id CD206CB216A
	for <lists+usb-storage@lfdr.de>; Wed, 10 Dec 2025 07:35:21 +0100 (CET)
Received: by mail-pf1-x445.google.com with SMTP id d2e1a72fcca58-7d24bbb9278sf12572339b3a.0
        for <lists+usb-storage@lfdr.de>; Tue, 09 Dec 2025 22:35:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1765348520; cv=pass;
        d=google.com; s=arc-20240605;
        b=aAi6poHiJK8BGjTfeRpjGapVm0/J/WqD6M53MEmsmYtz/vlmPJQdY8/ZAhODP1Ivki
         fOhmMy3Ug6pl3qgDHC5eWbL8UG7tPDkxMwj97nNEgnGz0paf3P3yKoN79chuwl8airGO
         uiD25G2/oh0PgiN1j7abT0Zxf9Y858gKPDo+6Kpg9XPhqmdVlxaaO96ZPeUfSmzdcpwb
         7cTupQZ8mn1K8QWHHdeKM4aOkEWpfj4NJMx4XVud0ibdmOdFNgtg/WId0WXjtvJUHsob
         LNSdMa7O2crvEZKK/IYCDUzDHD59xR2Cr+k66nDDUxCmckhcPqD1NcigkHTAtq723iRd
         zEOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=gl4l+a4Kj/KVbpohPKuvTyltD0fLxSow4M60FySZWzE=;
        fh=unZTlxmQnrRS2laJvxvKhtSTgkcav1wnXEn9OXyoqRg=;
        b=dTX9OVcuvAF30KhmmgphReVukFyicXhst3B4/sSsNk85DDCrde0Xfyv8et10ekhsJX
         kaFtbjSESih1Xw9AMYioJwfRlWDHAsJu7M6xHHntEgUBcNCswclmBJ5ZFiLrFC2KKCXe
         U8PeNRLq9Dr3qLpV/j+fFRf4kXZwYXSu7Mv/9jjjrmhovYBMSV5VTm65KBrmso4fLPrY
         ycr3cyHaaAHl1r4NRnU1wNoyWdCqXiMpRg0CarLrAMUGKjwGG+G5gXarfuh+5hy7S+RG
         2vigNoRBISag26ULH7w/Mhe97vr/5LuDZZlQEIwiWDVHwmuJr7F8bPcJoy4p7PUy6XWk
         U3/w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lfEU8ZKR;
       spf=pass (google.com: domain of sashal@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1765348520; x=1765953320; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gl4l+a4Kj/KVbpohPKuvTyltD0fLxSow4M60FySZWzE=;
        b=R7Bsp8gnMFgbUSU3LQ6CsNNJnvH6ilRRRoBZzWaVATeaa5Of6ItVxACAbMFlq3tXCS
         KWLZ9kxHpijxs84zXOLVVb5V54iPqUtFluwn1VRXK7Di1iQKL9NVlBEudg0uYskl6JkM
         HrK0FbtD2+Fr0ZnQD9vSiDNclkRt16Qlk2luM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765348520; x=1765953320;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gl4l+a4Kj/KVbpohPKuvTyltD0fLxSow4M60FySZWzE=;
        b=B1l8PahfRZ3SK8BqHZHjdqA0sRQ72Af6YPJLJOacFT6Bvoq/9pAOFbWbmWitwaYCgn
         7SB0X5FZB1a/6GCemtiShgmkiRXW4mo6AN8es/Sz1xZEgkKXlFqvp/SpzYR1vMFRbVzD
         Deh+r0L+t64ApNSkpRkrjlgtrs8ywMdRKX0JQbhde638/LG2npEe0X/aXzhxfsuKTash
         ghW5orrmD+SRJ+X3mInryjM8x/FbIwbLitbVl7RSbDHHJvmFEplULETgpcxEs6JnI8bn
         Sgd+JKJ2Sxd4c+HGseezg9m+NmKqHN5fagrRJfgSoTOxfbvKeym6KbiXXoQjGrxEjhUf
         3tJA==
X-Forwarded-Encrypted: i=2; AJvYcCUq+wW+Vwrm3PN61yHhzGwMX5v3Dt1wLeAUlVs3bHCrM9gzBr91W3NHeoZo3NFmo42cGhcoJg==@lfdr.de
X-Gm-Message-State: AOJu0YyrDCKwKX7qXCGsRaxMAZL/t9Ddw5N9vlQTOxF92OgPe7gZYm+a
	TG6/bQPD8mZac6scDDis33Rs2vFforJP7B6TAN5HiKcCqg6z7U8mFF93KuIGPGzsbhc=
X-Google-Smtp-Source: AGHT+IEDTBgK+OKv18qrA1cqwCiKCYKiB04MwMI7E0kn85eohSdM514ZVv72d1ws90dGbFtB3fLchA==
X-Received: by 2002:a05:6a00:b41:b0:7aa:3642:2173 with SMTP id d2e1a72fcca58-7f22e58a1cdmr1246612b3a.31.1765348519668;
        Tue, 09 Dec 2025 22:35:19 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="AWVwgWZMa+IxMNAeDHp08gsFXCtWBePA2q/3Sm03aB56MwVgOQ=="
Received: by 2002:aa7:8a0b:0:b0:7a6:a380:fc79 with SMTP id d2e1a72fcca58-7e2681483c1ls6956346b3a.1.-pod-prod-06-us;
 Tue, 09 Dec 2025 22:35:18 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXhl6Vtq56Nhi8sLF5+V9Stuzd3Y5hKGYdAyP+JbJJj2OcS8QXjcYa1jaRTDYm2AZVg2qHjWf/jUkPwvQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a00:2e18:b0:7b9:9232:2124 with SMTP id d2e1a72fcca58-7f22dbb6afemr1273657b3a.14.1765348517850;
        Tue, 09 Dec 2025 22:35:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1765348517; cv=none;
        d=google.com; s=arc-20240605;
        b=CHx81h3AsDEpHu38k4HtCxKvlqu9HI93w830wfMF1qI+WLr1Q9Q5MrfYR7pug/8MiW
         PFmYvgSX7RhKYxA9LDbRyeMdCKfQAOV0TGG2QBENnduwWBzl36dgufGwWTasr1Rlbx9z
         3QrBpMEPyoVH3L+sHgOKvv3y3VJozlJXEF6qPUYjCzy43UU36bBpvLRnc0vITAdaFwMB
         +xlrXKyBS6EwR60H6Iffjm3u5aVnTkBnvz8tZXeCD/qOPFCpzcXSGuKPWGjDMSTT2eQR
         k8NutNZeH2UsPdFXBd+B8L7Qq/6e0JPu7CyNi2LwwuBPcpGahRN1Llz7wx63ZF13qD9f
         9EYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0UGHJwaFC4Eyz8Lc9Z1tKNQx954fD2wfTNq9fLiTSYw=;
        fh=zpFZ7AiyVu+wgQl+xYibeWbbPMp92RG48vKRcvVQNOI=;
        b=IjjU647IPK9LGcNpOUh+x8xZSlSzaqmS75uRVO8OacZgWzI0qU3knaxOM2VRR1Ztr3
         QqnOBd1nFLVVysu/OsE+c+asa//gFsx09A22CFn2X+b7AqjCsgpMF7YjlPFKK9CtdsK0
         V/kUs/g71ELZTEL+ChJZV4iTf0WnTi2Q7Dr0gXFGlsDHePynPDlBx8v6STqBKl2Bq4Js
         7VNic3sSimClEctGiyz4DI96meu38YRHWOKcWpu/2JD42BQL5cn2/tqH56Yl48OuN1Oh
         tMbWkeCtb2eRrsT9BqoQxPiL9GB/hBfb0A7xThrmh5iJDLseQjkVXIa81LC4XbRjc10J
         PDyg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lfEU8ZKR;
       spf=pass (google.com: domain of sashal@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [172.234.252.31])
        by mx.google.com with ESMTPS id d2e1a72fcca58-7e2a02517cesi27660800b3a.2.2025.12.09.22.35.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 22:35:17 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 172.234.252.31 as permitted sender) client-ip=172.234.252.31;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 629AB44350;
	Wed, 10 Dec 2025 06:35:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89205C19422;
	Wed, 10 Dec 2025 06:35:15 +0000 (UTC)
From: "'Sasha Levin' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: Chen Changcheng <chenchangcheng@kylinos.cn>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 6.18-5.10] usb: usb-storage: No
 additional quirks need to be added to the EL-R12 optical drive.
Date: Wed, 10 Dec 2025 01:34:37 -0500
Message-ID: <20251210063446.2513466-8-sashal@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251210063446.2513466-1-sashal@kernel.org>
References: <20251210063446.2513466-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.18
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lfEU8ZKR;       spf=pass
 (google.com: domain of sashal@kernel.org designates 172.234.252.31 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: Sasha Levin <sashal@kernel.org>
Reply-To: Sasha Levin <sashal@kernel.org>
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

From: Chen Changcheng <chenchangcheng@kylinos.cn>

[ Upstream commit 955a48a5353f4fe009704a9a4272a3adf627cd35 ]

The optical drive of EL-R12 has the same vid and pid as INIC-3069,
as follows:
T:  Bus=3D02 Lev=3D02 Prnt=3D02 Port=3D01 Cnt=3D01 Dev#=3D  3 Spd=3D5000 Mx=
Ch=3D 0
D:  Ver=3D 3.00 Cls=3D00(>ifc ) Sub=3D00 Prot=3D00 MxPS=3D 9 #Cfgs=3D  1
P:  Vendor=3D13fd ProdID=3D3940 Rev=3D 3.10
S:  Manufacturer=3DHL-DT-ST
S:  Product=3D DVD+-RW GT80N
S:  SerialNumber=3D423349524E4E38303338323439202020
C:* #Ifs=3D 1 Cfg#=3D 1 Atr=3D80 MxPwr=3D144mA
I:* If#=3D 0 Alt=3D 0 #EPs=3D 2 Cls=3D08(stor.) Sub=3D02 Prot=3D50 Driver=
=3Dusb-storage
E:  Ad=3D83(I) Atr=3D02(Bulk) MxPS=3D1024 Ivl=3D0ms
E:  Ad=3D0a(O) Atr=3D02(Bulk) MxPS=3D1024 Ivl=3D0ms

This will result in the optical drive device also adding
the quirks of US_FL_NO_ATA_1X. When performing an erase operation,
it will fail, and the reason for the failure is as follows:
[  388.967742] sr 5:0:0:0: [sr0] tag#0 Send: scmd 0x00000000d20c33a7
[  388.967742] sr 5:0:0:0: [sr0] tag#0 CDB: ATA command pass through(12)/Bl=
ank a1 11 00 00 00 00 00 00 00 00 00 00
[  388.967773] sr 5:0:0:0: [sr0] tag#0 Done: SUCCESS Result: hostbyte=3DDID=
_TARGET_FAILURE driverbyte=3DDRIVER_OK cmd_age=3D0s
[  388.967773] sr 5:0:0:0: [sr0] tag#0 CDB: ATA command pass through(12)/Bl=
ank a1 11 00 00 00 00 00 00 00 00 00 00
[  388.967803] sr 5:0:0:0: [sr0] tag#0 Sense Key : Illegal Request [current=
]
[  388.967803] sr 5:0:0:0: [sr0] tag#0 Add. Sense: Invalid field in cdb
[  388.967803] sr 5:0:0:0: [sr0] tag#0 scsi host busy 1 failed 0
[  388.967803] sr 5:0:0:0: Notifying upper driver of completion (result 810=
0002)
[  388.967834] sr 5:0:0:0: [sr0] tag#0 0 sectors total, 0 bytes done.

For the EL-R12 standard optical drive, all operational commands
and usage scenarios were tested without adding the IGNORE_RESIDUE quirks,
and no issues were encountered. It can be reasonably concluded
that removing the IGNORE_RESIDUE quirks has no impact.

Signed-off-by: Chen Changcheng <chenchangcheng@kylinos.cn>
Link: https://patch.msgid.link/20251121064020.29332-1-chenchangcheng@kylino=
s.cn
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

## Summary

**What the commit does:**
This commit fixes a device conflict where the EL-R12 optical drive (HL-
DT-ST DVD+-RW GT80N) with firmware revision 3.10 incorrectly receives
USB quirks intended for the INIC-3069 controller because they share the
same VID:PID (0x13fd:0x3940). The fix narrows the firmware revision
range from "all revisions" (0x0000-0x9999) to only revision 3.09
(0x0309-0x0309).

**History context:**
- Original quirk added in 2015 (commit bda13e35d584d) - was marked `Cc:
  stable@vger.kernel.org # 3.16`
- IGNORE_RESIDUE added in 2017 (commit 89f23d51defcb) - also marked for
  stable
- The quirk entry has existed in stable trees for years

## Meets Stable Criteria Assessment

| Criterion | Assessment |
|-----------|------------|
| Obviously correct | =E2=9C=85 Yes - simple revision range narrowing |
| Fixes real bug | =E2=9C=85 Yes - disc erase operations fail completely |
| Small and contained | =E2=9C=85 Yes - 1 line change |
| No new features | =E2=9C=85 Yes - just fixes quirk scope |
| Important issue | =E2=9C=85 Yes - device operations completely fail |

## Risk vs Benefit

**Benefits:**
- Fixes real functional failure (disc erase operations)
- Users with EL-R12 optical drives can use them properly
- Minimal change, low regression risk

**Risks:**
- Could theoretically affect INIC-3069 devices with firmware versions
  other than 3.09 if they exist and need these quirks
- However, the original report was from a specific device/tester, and no
  evidence suggests other firmware versions need the quirks

**Mitigating factors:**
- The quirk was originally based on a single reporter's device (Benjamin
  Tissoires)
- If multiple firmware versions needed quirks, we'd likely have seen
  additional reports over the ~10 years since the original quirk was
  added
- The commit author thoroughly tested the EL-R12 without the quirks

## Concerns

1. **No explicit Cc: stable tag** - The maintainer didn't explicitly
   request stable backport
2. **No Fixes: tag** - No specific commit is pointed to as introducing
   the bug
3. **Revision specificity** - We don't have absolute confirmation that
   0x0309 was the original reporter's exact firmware revision

## Conclusion

This is a standard USB quirk adjustment that fixes a real user-facing
bug (optical drive operations failing). USB device quirks are routinely
backported to stable. The change is minimal (single line), surgical, and
addresses documented hardware compatibility issues. The risk of
regression is low since the original quirk was based on a single
reporter's device, and narrowing the scope shouldn't affect other users.

While the lack of a Cc: stable tag is notable, USB quirk fixes of this
nature are commonly backported because they enable proper hardware
operation. The fix allows the EL-R12 optical drive to work correctly
without impacting the original INIC-3069 devices that need the quirks.

**YES**

 drivers/usb/storage/unusual_uas.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusua=
l_uas.h
index 1477e31d77632..b695f5ba9a409 100644
--- a/drivers/usb/storage/unusual_uas.h
+++ b/drivers/usb/storage/unusual_uas.h
@@ -98,7 +98,7 @@ UNUSUAL_DEV(0x125f, 0xa94a, 0x0160, 0x0160,
 		US_FL_NO_ATA_1X),
=20
 /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
-UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
+UNUSUAL_DEV(0x13fd, 0x3940, 0x0309, 0x0309,
 		"Initio Corporation",
 		"INIC-3069",
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
--=20
2.51.0

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20251210063446.2513466-8-sashal%40kernel.org.
