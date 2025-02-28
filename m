Return-Path: <usb-storage+bncBCD353VB3ABBBKNEQ67AMGQEVFJ22AI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x345.google.com (mail-wm1-x345.google.com [IPv6:2a00:1450:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id 7977DA49CDE
	for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 16:11:39 +0100 (CET)
Received: by mail-wm1-x345.google.com with SMTP id 5b1f17b1804b1-438e4e9a53fsf14368355e9.1
        for <lists+usb-storage@lfdr.de>; Fri, 28 Feb 2025 07:11:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740755499; cv=pass;
        d=google.com; s=arc-20240605;
        b=ELheQAoiHCSr+qNYui+q4q4icqkB5m3y8LpJl6Qc1YZBiHgDRrHarKXOvjAmbA0SNC
         ArH02tXUK94d/iRFwAphdqOssQ5F4S9k+jQr23jvx04DSm6TRyvOaFUylYVMv6mon52s
         LRlkaByyZRockffvzgNh4apAX4ZDHcaT/xIi+57z6rzXXa6Jdvu2VPgswfv7MfSgkpF7
         HAP0J7o9DPZOGCGHrCn/76pqdSDG3nhm1149WD4txdydKImcO64le2M8E+5s7j8bL4vr
         ebvh0J4Fk02qlNTdNrTnTCX6fMRakXjWIFHIb8BcQ6wbTm7VvYH44Gxq0Wd7hoC4nRKq
         cuPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to
         :content-transfer-encoding:mime-version:message-id:date:subject:from
         :dkim-signature;
        bh=YK1XcboLtKQUsPDOiuXf4SlTo9byK+jREkXPG5HFqGE=;
        fh=hGE9fiu73sP826vvlzkP++BqIZnqnhP+hasb/A12f0Q=;
        b=eLnIz2FxrPbvTcICx18U9xgE4fRjwxGiw3qMHypZDLhwq0Ni9W8fOWVHFTPCXjQ4A3
         Mhj1Dzu6fPodICdS0GHmeS5nu8FdV7FaSa4TTt5nh0ghmD8vgiUUu1+Aox5fA582YWv8
         4GVCaGAa1AgS8OM8kbO03pnd0K+MGlP//qIsqmPTrs4xxz7JKhxQ5Uv1jPSPMBibgtSR
         QrlDJe4kNaOHzTfs1Wzx+IkyRqSyJvRk86TjPWyOoOftRdHqGzVesZQFT1WJIG8Sz9rT
         trN1YzRpzNGry1QgkMdFjVMCCgiG72y0Kt2aiqUJVo78RRxCpWMEzHJ4poToD2eDehqP
         IWew==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aUirnxra;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2600:3c04::f03c:95ff:fe5e:7468 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740755499; x=1741360299; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:reply-to:cc:to:content-transfer-encoding
         :mime-version:message-id:date:subject:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YK1XcboLtKQUsPDOiuXf4SlTo9byK+jREkXPG5HFqGE=;
        b=Fg32pV7aOR6hSPeHQakFUtNhedOaanX20QARuJohIPV6wzJJQ8MXv4z14+HdoruRGt
         PVThY9da/p+Dz86Cs6DmRNeRkikaHvl3/gp11+lSuJRswmHBcXULq4WCGLFYkEQCVrO5
         R7YC0d8uTy0vZwB4ELynTWDR7rPiHDqbpBd1M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740755499; x=1741360299;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:reply-to:cc:to
         :content-transfer-encoding:mime-version:message-id:date:subject:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YK1XcboLtKQUsPDOiuXf4SlTo9byK+jREkXPG5HFqGE=;
        b=rt5o9k4jRhoxqTFTEWJQIm2SPxZWsTWIO1WHUsEjKpARSHc6UBtqis0/0N8ye3o76c
         sdTcuMyoTW1vIze5k//GLYvLktGUecIDi3LCLPTZhvfas9RC9v8WKFRs/S4FBkqXFg5r
         7qjIMQUKBfsGD9gVPB1N0X31HD35W77SuS3s9sp8+Po4NZvnHgBdMAhzDebpnCsGHr2l
         OSjDAUfClhOFfvGCiFUA+sNS0Rx6hHi5HURLLMCPHyPqDUWUietJoaL5SGaD7Qoe/13Z
         AhEetjCFj8SnwkszjEj8mUW9P9aUrSXJj5N95XB7Ih9GUHtkTqMsV6J+VqOTVXBZZ8RB
         GA3w==
X-Forwarded-Encrypted: i=2; AJvYcCXmaYGkbN14+KakIn+ATkdUP3fUjfGvZZOoANFvCbopE4jZlobASYbHGompxzj5k+2OOJ8VPA==@lfdr.de
X-Gm-Message-State: AOJu0YydUx0K1av5XkqBhjzzGmOTnLQdI+jvb4xVwHWG7DpjJP4Sb6zl
	KFBI+L9k+aeasstulQ0nAWAFAjyAy/oIkIEU4LtFV3zZ3aA6RPJzsS6AnQWcw7k=
X-Google-Smtp-Source: AGHT+IFYsHcfkDcH3w7NwGBcAqNljwnQrmooHaMG38G5xKBDbXsed6DW2PD4HfHIlE1e2BTJOGFFTw==
X-Received: by 2002:a05:600c:5123:b0:439:a251:895b with SMTP id 5b1f17b1804b1-43ba6709bb2mr35505605e9.15.1740755498421;
        Fri, 28 Feb 2025 07:11:38 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVFaBfcHYX43rArFEw9AYJGnD2NGcQkCWEZcZ2eFU1isUg==
Received: by 2002:a05:600c:5943:b0:439:8ddc:117b with SMTP id
 5b1f17b1804b1-43aed4c5240ls10060165e9.0.-pod-prod-02-eu; Fri, 28 Feb 2025
 07:11:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVQuLwZQuhWckxIdnZrCDm3wUj4Mn3SfvTPa0ALeqgNBBGvyswyogrJbopXcWS97IEvrcyCJ/uZkz3NdQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:511e:b0:439:9aca:3285 with SMTP id 5b1f17b1804b1-43ba66dfe1amr31631105e9.6.1740755496029;
        Fri, 28 Feb 2025 07:11:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740755496; cv=none;
        d=google.com; s=arc-20240605;
        b=Fc4V0Q3WI2XEKfmJZr4F00QB2qVwn3eOFvSX9LcxXYH6xJKgZXV0YJIYl3gKLZavK5
         LVEPS8qTegebiAAHa3ISveP4slDb/R/zOaSccX+u5sxVhvbyYk2RR/CANyN/70P7nA5l
         d4rv014yvL0jTDxeTSHrVYbGC7IJfVFpeNLUbHwrgtXtZwLtez0/3+w6Nkgz4YvnP2Is
         a2RsCYa52upVTf7ox42RL+ylinwqbjQQz4KlRNxxddwW3O1ezi5dxgU1iZA7MZ3HW7MH
         ihfL4Zyi4E57DvKnjfdZc+T6JvIXRgAj1F5tU9dMBCfeSZyANX2HIFU4PqvUhF6xFw59
         bNIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=reply-to:cc:to:content-transfer-encoding:mime-version:message-id
         :date:subject:from:dkim-signature;
        bh=vlVOh6NY0MuAlk0Sm8s9TnYbPbJZtZd83+66UMGfma0=;
        fh=t85edx+sQ1Skfp7ZeTpNIH3lUx4BfFwBq5zypEnFHfI=;
        b=VkCfELSXTfoc0ZQohoqin5Mpp0v1m+49wlPbrOY5CFFsSTefnH0lY4aL+ysLwNVVlc
         XixbQipjvg2I3tTF+hkuJ758xXFzbysDIlNulxtWqBTk8vKvGSxuLRuZCWgI4FsYauIH
         x7rGeIN5wh2b3l4PIKHeQ9K0d2hpYoNu035BKzgj74jlwJQEvoYcHYWPVLj2i09ei2jv
         sH1uTMARqekR4xWNhJY5895hjQ/TAqtX/NN6jqngi1v+Kok+if197bE/ZRUldXp8yGpY
         IkDdI8pGtk6D+y5FK+3Y1cRxhSYRvFMvrhIbzIOCB9mA83lpM6Np7QqsW9Fv2PEB2YuS
         BW4g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aUirnxra;
       spf=pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2600:3c04::f03c:95ff:fe5e:7468 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [2600:3c04::f03c:95ff:fe5e:7468])
        by mx.google.com with ESMTPS id 5b1f17b1804b1-43b7a27e5efsi28682805e9.155.2025.02.28.07.11.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 07:11:35 -0800 (PST)
Received-SPF: pass (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates 2600:3c04::f03c:95ff:fe5e:7468 as permitted sender) client-ip=2600:3c04::f03c:95ff:fe5e:7468;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 77B6F61144;
	Fri, 28 Feb 2025 15:11:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F19C4CED6;
	Fri, 28 Feb 2025 15:11:34 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3067C282C1;
	Fri, 28 Feb 2025 15:11:34 +0000 (UTC)
From: =?UTF-8?Q?=27Jonathan_Neusch=C3=A4fer_via_B4_Relay=27_via_USB_Mass_Storag?=
	=?UTF-8?Q?e_on_Linux?= <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] [PATCH v3 0/9] usb: storage: Mark various arrays as const
Date: Fri, 28 Feb 2025 16:11:15 +0100
Message-Id: <20250228-misc-const-v3-0-09b417ded9c4@posteo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-B4-Tracking: v=1; b=H4sIABPSwWcC/1WMQQ6DIBQFr2JYlwY+oLWr3qPpAvFTWRQMENLGe
 PeiK81bzUtmFpIwOkzk3iwkYnHJBV9BXBpiJu3fSN1YmQADySTj9OOSoSb4lCl2gzQW2KhsT6o
 wR7Tuu8eer8qTSznE394ufHu3jGIA6pgpnNYBt1YMt1aK7jGHlDFcPWaydQoc3fbkAmVUD61SW
 mrojTm567r+AWlKhIThAAAA
X-Change-ID: 20240401-misc-const-e7b4cf20d5f9
To: Alan Stern <stern@rowland.harvard.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740755487; l=1859;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=d6jAc3qib5tSgD8hCc1ZWLfDLKrBDtNf4sx4KR6R/lE=;
 b=F1afqBPYnJvF2KHLnpWOeY0Wgv1HJz8SL1YNWW21594n+LoTJHkJbeiJqMzW0ZSYkTlZ4R4Ll
 uG0qOvsQfcmBKjWrAS8sBGv5haqqScp8LVDTjxiz8fxunnwF4BYl3Ji
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Original-Sender: devnull@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=aUirnxra;       spf=pass
 (google.com: domain of devnull+j.ne.posteo.net@kernel.org designates
 2600:3c04::f03c:95ff:fe5e:7468 as permitted sender) smtp.mailfrom=devnull+j.ne.posteo.net@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: =?utf-8?q?Jonathan_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
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

While reading code, I noticed that some arrays in USB mass storage
drivers are declared static but not const, even though they are not
modified. This patchset marks them const.

All patches were compile-tested.

Signed-off-by: Jonathan Neusch=C3=A4fer <j.ne@posteo.net>
---
Changes in v3:
- Elaborate *why* const is a good idea
- Link to v2: https://lore.kernel.org/r/20250226-misc-const-v2-0-ab655a4a29=
cc@posteo.net

Changes in v2:
- Add new patches 2-9
- Use consistent authorship information
- Link to v1: https://lore.kernel.org/r/20250225-misc-const-v1-1-121ff3b864=
37@posteo.net

---
Jonathan Neusch=C3=A4fer (9):
      usb: storage: jumpshot: Use const for constant arrays
      usb: storage: transport: Use const for constant array
      usb: storage: alauda: Use const for card ID array
      usb: storage: datafab: Use const for constant arrays
      usb: storage: initializers: Use const for constant array
      usb: storage: realtek_cr: Use const for constant arrays
      usb: storage: sddr09: Use const for constant arrays
      usb: storage: sddr55: Use const for constant arrays
      usb: storage: shuttle_usbat: Use const for constant array

 drivers/usb/storage/alauda.c        |  8 ++++----
 drivers/usb/storage/datafab.c       | 14 +++++++-------
 drivers/usb/storage/initializers.c  |  2 +-
 drivers/usb/storage/jumpshot.c      | 10 +++++-----
 drivers/usb/storage/realtek_cr.c    |  6 +++---
 drivers/usb/storage/sddr09.c        | 14 +++++++-------
 drivers/usb/storage/sddr55.c        |  4 ++--
 drivers/usb/storage/shuttle_usbat.c |  2 +-
 drivers/usb/storage/transport.c     |  2 +-
 9 files changed, 31 insertions(+), 31 deletions(-)
---
base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
change-id: 20240401-misc-const-e7b4cf20d5f9

Best regards,
--=20
Jonathan Neusch=C3=A4fer <j.ne@posteo.net>


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/20250228-misc-const-v3-0-09b417ded9c4%40posteo.=
net.
