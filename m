Return-Path: <usb-storage+bncBDI5XW432EKRB3FVR25QMGQE7IRPNRA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 063989F7384
	for <lists+usb-storage@lfdr.de>; Thu, 19 Dec 2024 05:02:55 +0100 (CET)
Received: by mail-ot1-x348.google.com with SMTP id 46e09a7af769-71ded0593dfsf84798a34.2
        for <lists+usb-storage@lfdr.de>; Wed, 18 Dec 2024 20:02:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734580973; cv=pass;
        d=google.com; s=arc-20240605;
        b=i8x1WwtdZ16L1n/HBMjf/JX/NStcmpxi537pCmC/MAYQDIw7pXOFk+UNJ0uOECqNZK
         J7KQerp+EAOZYvlPsh21aZkgsm2EQ8LbEw0muAKnU1HKe57scJ+I6CP6CzYIWiFU0L/R
         OCwmWjJ+nb8GaXAHetrBeyj39kzpebKZEAhVkms/ES9AlJ/DiVgSZxyjQ093BiDD7w81
         Nuk9GOfuSdimBrsx/i0PCk4JjsMhxLNLr/LpZ8qyKTkadYljmqzgyVtOv/EghTTPAMAC
         3E+ux87D3O/XIr4xvxrCKyfRShdgW2NRa9pT1IMmtlt9TQQxAd1ObZ0EGInrs1z4OCux
         ji0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :subject:from:to:content-language:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=mq20MI46Qpjt+vo9sBSvGLwwBZjdpTTVQL4t5IQ4Pbk=;
        fh=golOnNpkZzub66uqgduyw181vlKGcSm0KT5MOncqv7g=;
        b=M2GwUZdT1g0sWPm+Dd+sD5ZDtFQxNwQASEzu2Q6Hi3Fx0DRGMBOHqV3ECSzQzi0sIY
         pPXhAt5ed1fgktX3LWpz3gMH9yARV9DbY1ByhLrelzAyIBh9n23A9pJCkKYYW6Y1aR+3
         /DlFTzwtJbqJyLdfl0MtNYwtcWXT8xYxa897VzLUfnCqts90DoLKV0WLibSb+89vDiTq
         2zDaIpbO5eF42B3e0w7bKOMJ2N10nZa1+4dDczYoDACOO4fDntABnQuh/8GWI9ObxQ5a
         8afD5sMq2rnSF3/TBDM9jL5TYKDWq0vRbHr1ifk6qDuI2H/Z74arof5BzGBofriOZ2X0
         rAcA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass (test mode) header.i=@noduck.org header.s=node header.b=bLt9srZg;
       spf=pass (google.com: domain of raf@noduck.org designates 2600:3c03:e001:400::80 as permitted sender) smtp.mailfrom=raf@noduck.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=noduck.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1734580973; x=1735185773; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mq20MI46Qpjt+vo9sBSvGLwwBZjdpTTVQL4t5IQ4Pbk=;
        b=SaWXfyhClExirt82sn+zESVo3X5KLgkfYn2862XcSvPXoRTmsuReKmYhPp2Z/kFHyk
         /RJQiO9yX9LPaQ8N58XMh+BHHhxjGeE8Crns4utAvU5pEl8gmpJKniXELpiM8vfTbthL
         XEpoiK/t9XwhHjAb5f3sZ7kpr0nEYArQbxuLQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734580973; x=1735185773;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mq20MI46Qpjt+vo9sBSvGLwwBZjdpTTVQL4t5IQ4Pbk=;
        b=I3uXf+K/WSIOzj3QRiCXVuLMjEG9HgzCh3/Bu9IRcRtIRibX4in8q3eE7832mYEFp7
         1QVC1GyDIsOYlQVxq6UBxBHsTOm6j8qEZPi94gptQrmW4JtqvgMehaNu+BfzxDNqYvSC
         jZ+p6bRHFgdVMcH8wU3gCXo3ZU6aOl3i0kNkmvXlrXhwzbMgH5B2/lbGU/PiVQgWpJsG
         nxyMy/iCP07q8BTjycLG9q5oH34KFszQ0GEUDrzhRZvhMAFe/h8mqA681pN6Pgr8pvsM
         QG3Sz5JO/Z0P4e4C5gLbDWCJrX1BW031q3/ak8NYFd968k7I29xPbjqITA2kTvtp3Ktn
         J4sQ==
X-Forwarded-Encrypted: i=2; AJvYcCVGQqseYFBRFZW3oeiQsD7rNmXhvqNlOW6qVZotW+Ml1C0AfFQkLF1wUMQ6UGK0xSVxIHOfkw==@lfdr.de
X-Gm-Message-State: AOJu0YwUIqUsRF1Q+WtPD4NtGy5LKbEXO5JFaBfFDdIT/ZXPGJashY+T
	EQwRkKo0ftUYEIwT1wwzuKbPXbm6YMgogRcJojyUnEdaKhKmqMX57uvf1HdYdk0=
X-Google-Smtp-Source: AGHT+IHdcMlAn5ac4acpqTrmibfgIcX0a2OjZHE3hb6U9G21yC5eDVYl4zyX3xD3BtIwknXRC1Ib6Q==
X-Received: by 2002:a05:6830:6dc8:b0:71d:e0b8:5f0f with SMTP id 46e09a7af769-71fc50ab32bmr1494893a34.29.1734580973460;
        Wed, 18 Dec 2024 20:02:53 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:1689:b0:2a0:218e:bd25 with SMTP id
 586e51a60fabf-2a7d0d9b97als172543fac.2.-pod-prod-04-us; Wed, 18 Dec 2024
 20:02:52 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVcRj/YaTPb1sjzl82ubV9FnyUl+oi0YB0dU0yZLoML/vLO1+KIqkF/MTzEK36fQqDXnvbGT1bQ34DrdQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:1444:b0:3e7:61e6:8113 with SMTP id 5614622812f47-3ecdcc4ea35mr1234674b6e.23.1734580972538;
        Wed, 18 Dec 2024 20:02:52 -0800 (PST)
Received: by 2002:a05:6808:4755:b0:3eb:7446:f871 with SMTP id 5614622812f47-3eccb193cbdmsb6e;
        Wed, 18 Dec 2024 20:01:37 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWQprrdCGUVMeqyxYfVU/lV25WSRgT9E92pzoGWF94Esu4Pq8P+otnvwdfMGk8vCJPBSZyl2CGuWUNgGA==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:fc84:b0:216:4943:e575 with SMTP id d9443c01a7336-219d9903e9fmr30524095ad.57.1734580896673;
        Wed, 18 Dec 2024 20:01:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734580896; cv=none;
        d=google.com; s=arc-20240605;
        b=CAiYYkfWPzj5h9d58Od3WaROSnL7RE/wg5qOCcHxix7+MXYspaB2k2fI4cR+h7rbFm
         DSAImVR39whsAfZMQvZenTiqnBskedobhvbdJcpdxcHscB7D5fs9bqkT+v4Hb6OFoBER
         5IIFp2+eUK6OMP5zYUuwx7Agl7n+Z7y13W7NDKBZBvljD2S/gYWJBZ6uKuJ/fAQElOXd
         y2l6BYqAZH2Sn2tBbx19DUulMM/hTn3NuAuCRTr9HmH0Hi5kpPcm0EMYIi9vALI+pkLe
         CtQk0fEycR+F9Od9iFz3Mgro1squrUPEuV80tlRLtfrkOMnPYsEdRN52lhpkXz9Xb+fI
         yZ+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=3uCSf4ZU3VUgVNiOhIt7V7NvTbzAq+mp66Nl9TeXlak=;
        fh=4jqHytpiAEiNsq6s9K0gcfB+DN2x0IoZXh591+DloJs=;
        b=VxNPTYUUdnIEPdp2mOvFq8QAjDpimHAlumFwTfcpgbIXCE4oShJxSW8cAyG/9fiL/v
         s7oRWdnIVZ0ZfVA8s2Pe11r+55JfoVN3Yt8rm+JD39dLZ6gLfVPgLWSjmQpiE56iZY4X
         Kv1iY5+9/7sj+1z0GuczWMh1qt37HxjO8JWmKynSZZr/XEabBzUTPSPnYxv33W/YTHIW
         +jAHcS/TUYXvje49uzJAc5M/Njw6YGaS04GN2va08LwV0keqp/aYUYbYOw5Ojf9n/ct2
         mO1Hew4XDGoT8lhvq7mn7A3aTtwHxcNbnU+TtM1NC13a75FH7j3fqgMTXX4d3TbMcOaD
         OYjw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass (test mode) header.i=@noduck.org header.s=node header.b=bLt9srZg;
       spf=pass (google.com: domain of raf@noduck.org designates 2600:3c03:e001:400::80 as permitted sender) smtp.mailfrom=raf@noduck.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=noduck.org
Received: from node.noduck.org (node.noduck.org. [2600:3c03:e001:400::80])
        by mx.google.com with ESMTPS id d9443c01a7336-219dca063b5si6866015ad.401.2024.12.18.20.01.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 20:01:36 -0800 (PST)
Received-SPF: pass (google.com: domain of raf@noduck.org designates 2600:3c03:e001:400::80 as permitted sender) client-ip=2600:3c03:e001:400::80;
Received: from xxx.noduck.org ([2600:3c03:e001:400::25])
	by node with esmtps (TLS1.3:ECDHE_SECP256R1__ECDSA_SECP384R1_SHA384__AES_256_GCM:256)
	(Mixe)
	id 1tO7jC-00000001K2s-3f4Q from <raf@noduck.org>;
	Wed, 18 Dec 2024 23:01:35 -0500
Received: from xxx.noduck.org ([2600:3c03:e001:400::80]-wg.noduck.org)
	by post.noduck.org with esmtpsa (TLS1.3:ECDHE_X25519__ECDSA_SECP384R1_SHA384__AES_256_GCM:256)
	(Mixe)
	id 1tO7j3-000000001g0-0N8x from <raf@noduck.org>;
	Thu, 19 Dec 2024 04:01:25 +0000
Message-ID: <66dec9cd-ca3d-4b70-aed4-1cebc6e1157f@noduck.org>
Received: from 173.56.84.76:33038 (helo xxx.noduck.org)
	user xeps; Wed, 18 Dec 2024 23:01:24 -0500
Date: Wed, 18 Dec 2024 23:01:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
From: "'Raf D' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] USB storage, page fault on sustained write
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Spam_score: 0.0
X-Spam_bar: /
X-Original-Sender: raf@noduck.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass (test mode)
 header.i=@noduck.org header.s=node header.b=bLt9srZg;       spf=pass
 (google.com: domain of raf@noduck.org designates 2600:3c03:e001:400::80 as
 permitted sender) smtp.mailfrom=raf@noduck.org;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=noduck.org
X-Original-From: Raf D <raf@noduck.org>
Reply-To: Raf D <raf@noduck.org>
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

Hi,

I think I ran into a bug in usb-storage (or related) on 6.13-rc3, that does=
 not seem to happen on 6.12. Please see oops report below.

I am able to trigger this while trying to create a persistent usb drive (mk=
usb/dus). I was also sometimes able to trigger it with a simple dd write to=
 the whole drive.

Let me know if I can provide any further information.

Best,

Raf


2024-12-18T22:41:27.365777-05:00 expo kernel: BUG: unable to handle page fa=
ult for address: ffffffffb6ac20cd
2024-12-18T22:41:27.365803-05:00 expo kernel: #PF: supervisor write access =
in kernel mode
2024-12-18T22:41:27.365806-05:00 expo kernel: #PF: error_code(0x0003) - per=
missions violation
2024-12-18T22:41:27.365807-05:00 expo kernel: PGD 589a36067 P4D 589a36067 P=
UD 589a37063 PMD 588a001a1
2024-12-18T22:41:27.365809-05:00 expo kernel: Oops: Oops: 0003 [#1] PREEMPT=
 SMP NOPTI
2024-12-18T22:41:27.365810-05:00 expo kernel: CPU: 0 UID: 0 PID: 3954 Comm:=
 usb-storage Not tainted 6.13.0-rc3 #22
2024-12-18T22:41:27.365811-05:00 expo kernel: Hardware name: Dell Inc. XPS =
13 9310/0CDKXN, BIOS 3.26.0 09/10/2024
2024-12-18T22:41:27.365813-05:00 expo kernel: RIP: 0010:xhci_ring_expansion=
+0xbf/0x380
2024-12-18T22:41:27.365816-05:00 expo kernel: Code: 3d 01 00 00 8b 44 24 40=
 85 c0 0f 84 91 01 00 00 48 8b 54 24 18 48 8b 45 08 48 8b 52 08 48 89 50 08=
 48 8b 55 00 48 8b 44 24 18 <48> 89 50 08 8b 4c 24 54 8b 54 24 48 48 8b 74 =
24 08 48 8b 44 24 18
2024-12-18T22:41:27.365818-05:00 expo kernel: RSP: 0018:ffffac31c5ec7a38 EF=
LAGS: 00010086
2024-12-18T22:41:27.365823-05:00 expo kernel: RAX: ffffffffb6ac20c5 RBX: ff=
ff97ee0164a250 RCX: ffff97ef792b5000
2024-12-18T22:41:27.365825-05:00 expo kernel: RDX: ffff97ee41261b80 RSI: ff=
ffac31c5ec7a38 RDI: 0000000000001800
2024-12-18T22:41:27.365827-05:00 expo kernel: RBP: ffff97ee43897a00 R08: 00=
00000000000000 R09: 0000000000000000
2024-12-18T22:41:27.365828-05:00 expo kernel: R10: ffffac31c5ec79b8 R11: 00=
000000ffffffff R12: 0000000000000820
2024-12-18T22:41:27.365830-05:00 expo kernel: R13: 0000000000000000 R14: 00=
00000000000100 R15: ffff97ee04d28000
2024-12-18T22:41:27.365832-05:00 expo kernel: FS:  0000000000000000(0000) G=
S:ffff97f56f600000(0000) knlGS:0000000000000000
2024-12-18T22:41:27.365834-05:00 expo kernel: CS:  0010 DS: 0000 ES: 0000 C=
R0: 0000000080050033
2024-12-18T22:41:27.365836-05:00 expo kernel: CR2: ffffffffb6ac20cd CR3: 00=
00000589a34002 CR4: 0000000000772ef0
2024-12-18T22:41:27.365837-05:00 expo kernel: PKRU: 55555554
2024-12-18T22:41:27.365839-05:00 expo kernel: Call Trace:
2024-12-18T22:41:27.365841-05:00 expo kernel:  <TASK>
2024-12-18T22:41:27.365842-05:00 expo kernel:  ? __die_body.cold+0x19/0x26
2024-12-18T22:41:27.365844-05:00 expo kernel:  ? xhci_dbg_trace+0x6d/0xb0
2024-12-18T22:41:27.365845-05:00 expo kernel:  ? page_fault_oops+0xa2/0x230
2024-12-18T22:41:27.365846-05:00 expo kernel:  ? search_module_extables+0x4=
a/0x80
2024-12-18T22:41:27.365848-05:00 expo kernel:  ? xhci_ring_expansion+0xbf/0=
x380
2024-12-18T22:41:27.365863-05:00 expo kernel:  ? search_bpf_extables+0x5b/0=
x80
2024-12-18T22:41:27.365864-05:00 expo kernel:  ? xhci_dbg_trace+0x6d/0xb0
2024-12-18T22:41:27.365865-05:00 expo kernel:  ? xhci_dbg_trace+0x6d/0xb0
2024-12-18T22:41:27.365872-05:00 expo kernel:  ? exc_page_fault+0x148/0x170
2024-12-18T22:41:27.365873-05:00 expo kernel:  ? asm_exc_page_fault+0x22/0x=
30
2024-12-18T22:41:27.365874-05:00 expo kernel:  ? xhci_dbg_trace+0x65/0xb0
2024-12-18T22:41:27.365876-05:00 expo kernel:  ? xhci_ring_expansion+0xbf/0=
x380
2024-12-18T22:41:27.365877-05:00 expo kernel:  ? xhci_ring_expansion+0x86/0=
x380
2024-12-18T22:41:27.365878-05:00 expo kernel:  ? xhci_dbg_trace+0x65/0xb0
2024-12-18T22:41:27.365879-05:00 expo kernel:  prepare_ring+0x232/0x2c0
2024-12-18T22:41:27.365880-05:00 expo kernel:  prepare_transfer+0x83/0x170
2024-12-18T22:41:27.365882-05:00 expo kernel:  xhci_queue_bulk_tx+0x117/0xa=
80
2024-12-18T22:41:27.365883-05:00 expo kernel:  ? xhci_urb_enqueue+0x6a/0x33=
0
2024-12-18T22:41:27.365884-05:00 expo kernel:  xhci_urb_enqueue+0x31d/0x330
2024-12-18T22:41:27.365901-05:00 expo kernel:  usb_hcd_submit_urb+0xbf/0xbd=
0
2024-12-18T22:41:27.365903-05:00 expo kernel:  ? __kmalloc_noprof+0x314/0x4=
50
2024-12-18T22:41:27.365904-05:00 expo kernel:  ? usb_alloc_urb+0x25/0x70
2024-12-18T22:41:27.365905-05:00 expo kernel:  ? usb_alloc_urb+0x25/0x70
2024-12-18T22:41:27.365908-05:00 expo kernel:  usb_sg_wait+0x7a/0x190
2024-12-18T22:41:27.365910-05:00 expo kernel:  usb_stor_bulk_transfer_sglis=
t+0x74/0x130 [usb_storage]
2024-12-18T22:41:27.365911-05:00 expo kernel:  usb_stor_Bulk_transport+0x18=
1/0x420 [usb_storage]
2024-12-18T22:41:27.365912-05:00 expo kernel:  ? __pfx_usb_stor_control_thr=
ead+0x10/0x10 [usb_storage]
2024-12-18T22:41:27.365913-05:00 expo kernel:  usb_stor_invoke_transport+0x=
3a/0x510 [usb_storage]
2024-12-18T22:41:27.365915-05:00 expo kernel:  ? preempt_count_add+0x69/0xa=
0
2024-12-18T22:41:27.365916-05:00 expo kernel:  ? _raw_spin_lock_irq+0x14/0x=
40
2024-12-18T22:41:27.365917-05:00 expo kernel:  ? _raw_spin_unlock_irq+0x16/=
0x40
2024-12-18T22:41:27.365918-05:00 expo kernel:  ? __wait_for_common+0x15a/0x=
190
2024-12-18T22:41:27.365920-05:00 expo kernel:  ? __pfx_schedule_timeout+0x1=
0/0x10
2024-12-18T22:41:27.365921-05:00 expo kernel:  ? __pfx_usb_stor_control_thr=
ead+0x10/0x10 [usb_storage]
2024-12-18T22:41:27.365922-05:00 expo kernel:  usb_stor_control_thread+0x1d=
4/0x2a0 [usb_storage]
2024-12-18T22:41:27.365923-05:00 expo kernel:  ? preempt_count_add+0x69/0xa=
0
2024-12-18T22:41:27.365924-05:00 expo kernel:  ? _raw_spin_lock_irqsave+0x1=
7/0x50
2024-12-18T22:41:27.365925-05:00 expo kernel:  kthread+0xd4/0x100
2024-12-18T22:41:27.365926-05:00 expo kernel:  ? __pfx_kthread+0x10/0x10
2024-12-18T22:41:27.365927-05:00 expo kernel:  ret_from_fork+0x2d/0x50
2024-12-18T22:41:27.365931-05:00 expo kernel:  ? __pfx_kthread+0x10/0x10
2024-12-18T22:41:27.365939-05:00 expo kernel:  ret_from_fork_asm+0x1a/0x30
2024-12-18T22:41:27.365949-05:00 expo kernel:  </TASK>
2024-12-18T22:41:27.365956-05:00 expo kernel: Modules linked in: isofs snd_=
seq_dummy snd_hrtimer xt_CHECKSUM xt_MASQUERADE xt_conntrack ipt_REJECT nf_=
reject_ipv4 xt_tcpudp nft_compat nft_chain_nat nf_nat nf_conntrack nf_defra=
g_ipv6 nf_defrag_ipv4 nf_tables bridge stp llc ccm qrtr rfcomm cmac algif_h=
ash algif_skcipher af_alg bnep sunrpc snd_hda_codec_hdmi binfmt_misc xe snd=
_soc_avs snd_soc_hda_codec snd_hda_ext_core snd_ctl_led snd_soc_core snd_hd=
a_codec_realtek snd_compress intel_uncore_frequency drm_gpuvm snd_hda_codec=
_generic intel_uncore_frequency_common ac97_bus drm_exec gpu_sched drm_ttm_=
helper drm_suballoc_helper snd_hda_scodec_component nls_iso8859_1 snd_pcm_d=
maengine iwlmvm snd_hda_intel snd_intel_dspcfg snd_hda_codec mac80211 snd_h=
da_core snd_hwdep x86_pkg_temp_thermal snd_pcm intel_powerclamp ptp dell_pc=
 pps_core platform_profile snd_seq_midi libarc4 uvcvideo snd_seq_midi_event=
 videobuf2_vmalloc ofpart snd_rawmidi uvc cmdlinepart videobuf2_memops kvm_=
intel spi_nor videobuf2_v4l2 snd_seq hid_sensor_als pmt_telemetry
2024-12-18T22:41:27.365964-05:00 expo kernel:  processor_thermal_device_pci=
_legacy hid_sensor_trigger mtd intel_rapl_msr mei_pxp mei_hdcp pmt_class de=
ll_laptop i915 kvm btusb processor_thermal_device dell_wmi dell_wmi_ddv snd=
_seq_device industrialio_triggered_buffer videobuf2_common btrtl processor_=
thermal_wt_hint drm_buddy kfifo_buf iwlwifi btintel processor_thermal_rfim =
snd_timer processor_thermal_rapl ttm btbcm dell_smm_hwmon hid_sensor_iio_co=
mmon videodev dell_smbios intel_rapl_common dell_wmi_sysman btmtk spi_intel=
_pci dcdbas bluetooth firmware_attributes_class mc wmi_bmof dell_wmi_descri=
ptor industrialio spi_intel drm_display_helper snd cfg80211 mei_me processo=
r_thermal_wt_req i2c_i801 cec i2c_smbus soundcore mei i2c_mux processor_the=
rmal_power_floor drm_kms_helper intel_gtt intel_vsec processor_thermal_mbox=
 i2c_algo_bit intel_soc_dts_iosf igen6_edac intel_skl_int3472_tps68470 int3=
403_thermal tps68470_regulator int340x_thermal_zone clk_tps68470 intel_skl_=
int3472_discrete intel_skl_int3472_common int3400_thermal acpi_thermal_rel =
intel_hid
2024-12-18T22:41:27.365977-05:00 expo kernel:  sparse_keymap acpi_pad acpi_=
tad joydev input_leds mac_hid serio_raw sch_fq_codel coretemp msr parport_p=
c ppdev lp parport nvme_fabrics configfs efi_pstore nfnetlink dmi_sysfs ip_=
tables x_tables autofs4 btrfs blake2b_generic raid10 raid456 async_raid6_re=
cov async_memcpy async_pq async_xor async_tx xor raid6_pq libcrc32c raid1 r=
aid0 hid_sensor_hub intel_ishtp_hid wacom usbhid hid_multitouch hid_generic=
 uas usb_storage rtsx_pci_sdmmc crct10dif_pclmul crc32_pclmul i2c_hid_acpi =
polyval_clmulni i2c_hid polyval_generic ghash_clmulni_intel hid sha512_ssse=
3 sha256_ssse3 sha1_ssse3 psmouse rtsx_pci thunderbolt intel_lpss_pci ucsi_=
acpi intel_lpss drm intel_ish_ipc idma64 typec_ucsi intel_ishtp virt_dma ty=
pec video wmi pinctrl_tigerlake efivarfs aesni_intel crypto_simd cryptd
2024-12-18T22:41:27.365984-05:00 expo kernel: CR2: ffffffffb6ac20cd
2024-12-18T22:41:27.365990-05:00 expo kernel: ---[ end trace 00000000000000=
00 ]---
2024-12-18T22:41:27.365995-05:00 expo kernel: RIP: 0010:xhci_ring_expansion=
+0xbf/0x380
2024-12-18T22:41:27.366000-05:00 expo kernel: Code: 3d 01 00 00 8b 44 24 40=
 85 c0 0f 84 91 01 00 00 48 8b 54 24 18 48 8b 45 08 48 8b 52 08 48 89 50 08=
 48 8b 55 00 48 8b 44 24 18 <48> 89 50 08 8b 4c 24 54 8b 54 24 48 48 8b 74 =
24 08 48 8b 44 24 18
2024-12-18T22:41:27.366005-05:00 expo kernel: RSP: 0018:ffffac31c5ec7a38 EF=
LAGS: 00010086
2024-12-18T22:41:27.366010-05:00 expo kernel: RAX: ffffffffb6ac20c5 RBX: ff=
ff97ee0164a250 RCX: ffff97ef792b5000
2024-12-18T22:41:27.366015-05:00 expo kernel: RDX: ffff97ee41261b80 RSI: ff=
ffac31c5ec7a38 RDI: 0000000000001800
2024-12-18T22:41:27.366019-05:00 expo kernel: RBP: ffff97ee43897a00 R08: 00=
00000000000000 R09: 0000000000000000
2024-12-18T22:41:27.366023-05:00 expo kernel: R10: ffffac31c5ec79b8 R11: 00=
000000ffffffff R12: 0000000000000820
2024-12-18T22:41:27.366027-05:00 expo kernel: R13: 0000000000000000 R14: 00=
00000000000100 R15: ffff97ee04d28000
2024-12-18T22:41:27.366031-05:00 expo kernel: FS:  0000000000000000(0000) G=
S:ffff97f56f600000(0000) knlGS:0000000000000000
2024-12-18T22:41:27.366035-05:00 expo kernel: CS:  0010 DS: 0000 ES: 0000 C=
R0: 0000000080050033
2024-12-18T22:41:27.366039-05:00 expo kernel: CR2: ffffffffb6ac20cd CR3: 00=
00000101478005 CR4: 0000000000772ef0
2024-12-18T22:41:27.366043-05:00 expo kernel: PKRU: 55555554
2024-12-18T22:41:27.366047-05:00 expo kernel: note: usb-storage[3954] exite=
d with irqs disabled
2024-12-18T22:41:27.366052-05:00 expo kernel: note: usb-storage[3954] exite=
d with preempt_count 1

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/66dec9cd-ca3d-4b70-aed4-1cebc6e1157f%40noduck.o=
rg.
