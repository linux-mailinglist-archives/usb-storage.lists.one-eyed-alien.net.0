Return-Path: <usb-storage+bncBAABBYFF4D6QKGQEUJDD5MI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x248.google.com (mail-oi1-x248.google.com [IPv6:2607:f8b0:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id A71982BB4B9
	for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 20:02:57 +0100 (CET)
Received: by mail-oi1-x248.google.com with SMTP id k200sf4831678oih.23
        for <lists+usb-storage@lfdr.de>; Fri, 20 Nov 2020 11:02:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605898976; cv=pass;
        d=google.com; s=arc-20160816;
        b=rH/6Cxsp6WxJUjq4lpD6n/4KzyqEp8UOC+XZYTjKRJnBZmNp3IjronIB8ldQVpVdVA
         qrFx5SWsZuwXGtwPjqRs/k+/6jeVqgXEXncBc3KbBfuHlozQmTaZl8ylYwGreh7imn/S
         WsMZixBO8RGRlxPOW3wiY/ogxZfWMulG7GeGiHCH0PK7O+4xsIS3D0Y2UCl/09gb9pfY
         L7BPGTxK1DnRtUdCqnZf9bpfCP6B6HJ/Bpy62S42Jf51SpSQT+0VFXtawz491dVLu43P
         6obWIFHJKfJO/X+LwPMSgkzfHQF7RGSpe616jMLtQ0NAFr1MkhLj2KEtukmaQBHHc81K
         1TWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yOYGNPrlr5isqrW1o74c4UY/ZPU5NiIEJDSXNLxYApw=;
        b=zM9pCcS+Qxs5H8LQoYE1kFJXYM8uIjnKJQVsJixYt4bMpD61OZBBDLPObyfHLLVKr5
         LaElK9FlU93LtcQC73OlDZL8bVdo7wdrKTy4AjYHSi6FPGrKK1qH9tXG/1/bX10DkO/J
         8UkNvGgEhWmRILkRoyPQ+MuQCTioEjWtUiUzizyha32GnOFbCSzTSeKroNkICJyElZcI
         CSORUtNLrmd2TOKT61BOBaJlkfyCaae+/Iy6q9gNfJ0Ta3pkXotMwTtBeluIvVtF9pRm
         yxMeGDr2uYX3TlqjaBDYZazyK7jyh9ba29T8A6TfiHn4etRpF5owjjAvEVbkQ2Ujb3M0
         PtZA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nJTP3XwD;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yOYGNPrlr5isqrW1o74c4UY/ZPU5NiIEJDSXNLxYApw=;
        b=MeCKZLPRlMO4llZQd6hmnsI3en9Enfz0TmJGSrvQZG4cSvIYMXP7K4jkzK+xvf/b9Q
         oNBPxfICn0YPODygCcQcGmoLcNgk1Ibqx7q5hPr/to7+ztbLAlAM1fo6vSz6stUVdX5O
         vaNLLIJYeUjSqpoRhlDq/gtGgWexDTcWrRRuA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yOYGNPrlr5isqrW1o74c4UY/ZPU5NiIEJDSXNLxYApw=;
        b=F2poN/fuw401dl9flA58LGXh20vOQ1p07YQ+mTYBAMuqncVKoVVx42i1FT84GkItCO
         Z+g+UT3vdLnqIkM1ytNT79Xyun0aiK1tSU5UNXn6Mcshiw+Hl63yKf6CAnPqa4ibnXTm
         rt7Ues/zhTx9du3xyWJxivBWGLC1luW4apIEkZ6MSoJc4aRW3M50hefRfwfL+4WXLzdP
         M4w4P31lsGDYw/ZQ5Nr9Q6v2ky/5uH/n5Vhq9ZUa46btFSlbODysdUnsB4LyC6hSkEIZ
         WuQQMKZCScEbNoeo4tkUD7Uw/oo35aZXUwJ7TdKXDMArIgjghveZGYSC69wM3HE1DY+C
         94Bw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533B2t3agL07864SNr/lSqXx4WkkDgJHgQXopr1XaaQzjog3UzxW
	zEr6FKvE2QZFNQxNy3leRQYtlA==
X-Google-Smtp-Source: ABdhPJya0UMXO1J9YmhSa+SPAajhInu6NarDi/i+f6ZdnfIddC6d9AsZa3f4VQZMwMC0HoiXMCV2EQ==
X-Received: by 2002:a05:6808:56a:: with SMTP id j10mr7508923oig.121.1605898976559;
        Fri, 20 Nov 2020 11:02:56 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:a843:: with SMTP id r64ls1803281oie.2.gmail; Fri, 20 Nov
 2020 11:02:56 -0800 (PST)
X-Received: by 2002:aca:c6d4:: with SMTP id w203mr7586478oif.47.1605898976307;
        Fri, 20 Nov 2020 11:02:56 -0800 (PST)
Received: by 2002:aca:c357:0:b029:e3:bf81:7518 with SMTP id t84-20020acac3570000b02900e3bf817518msoif;
        Fri, 20 Nov 2020 10:21:41 -0800 (PST)
X-Received: by 2002:a17:902:c286:b029:d6:6cbd:eabf with SMTP id i6-20020a170902c286b02900d66cbdeabfmr14113494pld.41.1605896500904;
        Fri, 20 Nov 2020 10:21:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605896500; cv=none;
        d=google.com; s=arc-20160816;
        b=qAlQ15mPyNJcvRDcHlfyrGia53inbsdm1deXSMb+0Fd4ksuo58JHLcxgKpSRu6Gz3R
         p13RJedwd+XgDyoSFXxeG+MSWSJK2IBs+vBs/Yru2kBaa6uiW0hnZruMe+J65xDYKwGN
         /YtoOn0fUGIOp+QKHJcVnITTOIl5Vo/llceU0ry6PSkHlMubnFH9Lp06phjD65PSIEfa
         zBGoM1l1ixSlzYTWdhVUGRDywANaT/i6x/72N6AmLqoT94VyIXP5rGgmRd8v660efQmH
         tuCEG8UO2eDmLYiAQAqkMvvykA3uO2dKs95FX+paUMlL+m4ExpRMxTFM+yx9P7wIrCQb
         HKKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=q3t1iBoCaDtbIR1Fwt8OJgHJOIuwqu7Dh1RkfIYCbMg=;
        b=OxowLOqWVgPOFz2GLGQOejh3JRm0+4NCpz446msXiaC5ovO4vEIHdCoOZ4h58FAAZ/
         dxmJj1oTrbsqgtJ0D4p3nfUQqYoKN8VlGRGN2cc+nAfWAkIlJn1fu0xxupysjWhn77UP
         22vG5C5e71Z0uzrfB18pkn+LMcsee3yvct/IvMehxJMi6Yt1EiF6NLgQ622yEm8qCuS6
         r6Syvc9OIBLEF4CIarAIsPMiMT+aE3ThmNm454uRx+FvZpfIxmjsKEAujwhzRcgHL+SW
         kxX0z+8mJ6avXY5NfWSWnqf2OKqAfOOVgmmqGAimUJEREgWU9ZGrPwvHD2pDaelT58f1
         ZlkA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nJTP3XwD;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id x5si3305523plv.126.2020.11.20.10.21.40
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Nov 2020 10:21:40 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 44F062242B;
	Fri, 20 Nov 2020 18:21:33 +0000 (UTC)
Date: Fri, 20 Nov 2020 12:21:39 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: alsa-devel@alsa-project.org, amd-gfx@lists.freedesktop.org,
	bridge@lists.linux-foundation.org, ceph-devel@vger.kernel.org,
	cluster-devel@redhat.com, coreteam@netfilter.org,
	devel@driverdev.osuosl.org, dm-devel@redhat.com,
	drbd-dev@lists.linbit.com, dri-devel@lists.freedesktop.org,
	GR-everest-linux-l2@marvell.com, GR-Linux-NIC-Dev@marvell.com,
	intel-gfx@lists.freedesktop.org, intel-wired-lan@lists.osuosl.org,
	keyrings@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	linux-acpi@vger.kernel.org, linux-afs@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-atm-general@lists.sourceforge.net,
	linux-block@vger.kernel.org, linux-can@vger.kernel.org,
	linux-cifs@vger.kernel.org, linux-crypto@vger.kernel.org,
	linux-decnet-user@lists.sourceforge.net, linux-ext4@vger.kernel.org,
	linux-fbdev@vger.kernel.org, linux-geode@lists.infradead.org,
	linux-gpio@vger.kernel.org, linux-hams@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-i3c@lists.infradead.org,
	linux-ide@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-input@vger.kernel.org, linux-integrity@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
	linux-mmc@vger.kernel.org, linux-mm@kvack.org,
	linux-mtd@lists.infradead.org, linux-nfs@vger.kernel.org,
	linux-rdma@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
	linux-security-module@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org,
	linux-watchdog@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, netfilter-devel@vger.kernel.org,
	nouveau@lists.freedesktop.org, op-tee@lists.trustedfirmware.org,
	oss-drivers@netronome.com, patches@opensource.cirrus.com,
	rds-devel@oss.oracle.com, reiserfs-devel@vger.kernel.org,
	samba-technical@lists.samba.org, selinux@vger.kernel.org,
	target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
	usb-storage@lists.one-eyed-alien.net,
	virtualization@lists.linux-foundation.org,
	wcn36xx@lists.infradead.org, x86@kernel.org,
	xen-devel@lists.xenproject.org, linux-hardening@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>,
	Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: [usb-storage] [PATCH 000/141] Fix fall-through warnings for Clang
Message-ID: <cover.1605896059.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=nJTP3XwD;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi all,

This series aims to fix almost all remaining fall-through warnings in
order to enable -Wimplicit-fallthrough for Clang.

In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
add multiple break/goto/return/fallthrough statements instead of just
letting the code fall through to the next case.

Notice that in order to enable -Wimplicit-fallthrough for Clang, this
change[1] is meant to be reverted at some point. So, this patch helps
to move in that direction.

Something important to mention is that there is currently a discrepancy
between GCC and Clang when dealing with switch fall-through to empty case
statements or to cases that only contain a break/continue/return
statement[2][3][4].

Now that the -Wimplicit-fallthrough option has been globally enabled[5],
any compiler should really warn on missing either a fallthrough annotation
or any of the other case-terminating statements (break/continue/return/
goto) when falling through to the next case statement. Making exceptions
to this introduces variation in case handling which may continue to lead
to bugs, misunderstandings, and a general lack of robustness. The point
of enabling options like -Wimplicit-fallthrough is to prevent human error
and aid developers in spotting bugs before their code is even built/
submitted/committed, therefore eliminating classes of bugs. So, in order
to really accomplish this, we should, and can, move in the direction of
addressing any error-prone scenarios and get rid of the unintentional
fallthrough bug-class in the kernel, entirely, even if there is some minor
redundancy. Better to have explicit case-ending statements than continue to
have exceptions where one must guess as to the right result. The compiler
will eliminate any actual redundancy.

Note that there is already a patch in mainline that addresses almost
40,000 of these issues[6].

I'm happy to carry this whole series in my own tree if people are OK
with it. :)

[1] commit e2079e93f562c ("kbuild: Do not enable -Wimplicit-fallthrough for clang for now")
[2] ClangBuiltLinux#636
[3] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91432
[4] https://godbolt.org/z/xgkvIh
[5] commit a035d552a93b ("Makefile: Globally enable fall-through warning")
[6] commit 4169e889e588 ("include: jhash/signal: Fix fall-through warnings for Clang")

Thanks!

Gustavo A. R. Silva (141):
  afs: Fix fall-through warnings for Clang
  ASoC: codecs: Fix fall-through warnings for Clang
  cifs: Fix fall-through warnings for Clang
  drm/amdgpu: Fix fall-through warnings for Clang
  drm/radeon: Fix fall-through warnings for Clang
  gfs2: Fix fall-through warnings for Clang
  gpio: Fix fall-through warnings for Clang
  IB/hfi1: Fix fall-through warnings for Clang
  igb: Fix fall-through warnings for Clang
  ima: Fix fall-through warnings for Clang
  ipv4: Fix fall-through warnings for Clang
  ixgbe: Fix fall-through warnings for Clang
  media: dvb-frontends: Fix fall-through warnings for Clang
  media: usb: dvb-usb-v2: Fix fall-through warnings for Clang
  netfilter: Fix fall-through warnings for Clang
  nfsd: Fix fall-through warnings for Clang
  nfs: Fix fall-through warnings for Clang
  qed: Fix fall-through warnings for Clang
  qlcnic: Fix fall-through warnings for Clang
  scsi: aic7xxx: Fix fall-through warnings for Clang
  scsi: aic94xx: Fix fall-through warnings for Clang
  scsi: bfa: Fix fall-through warnings for Clang
  staging: rtl8723bs: core: Fix fall-through warnings for Clang
  staging: vt6655: Fix fall-through warnings for Clang
  bnxt_en: Fix fall-through warnings for Clang
  ceph: Fix fall-through warnings for Clang
  drbd: Fix fall-through warnings for Clang
  drm/amd/display: Fix fall-through warnings for Clang
  e1000: Fix fall-through warnings for Clang
  ext2: Fix fall-through warnings for Clang
  ext4: Fix fall-through warnings for Clang
  floppy: Fix fall-through warnings for Clang
  fm10k: Fix fall-through warnings for Clang
  IB/mlx4: Fix fall-through warnings for Clang
  IB/qedr: Fix fall-through warnings for Clang
  ice: Fix fall-through warnings for Clang
  Input: pcspkr - Fix fall-through warnings for Clang
  isofs: Fix fall-through warnings for Clang
  ixgbevf: Fix fall-through warnings for Clang
  kprobes/x86: Fix fall-through warnings for Clang
  mm: Fix fall-through warnings for Clang
  net: 3c509: Fix fall-through warnings for Clang
  net: cassini: Fix fall-through warnings for Clang
  net/mlx4: Fix fall-through warnings for Clang
  net: mscc: ocelot: Fix fall-through warnings for Clang
  netxen_nic: Fix fall-through warnings for Clang
  nfp: Fix fall-through warnings for Clang
  perf/x86: Fix fall-through warnings for Clang
  pinctrl: Fix fall-through warnings for Clang
  RDMA/mlx5: Fix fall-through warnings for Clang
  reiserfs: Fix fall-through warnings for Clang
  security: keys: Fix fall-through warnings for Clang
  selinux: Fix fall-through warnings for Clang
  target: Fix fall-through warnings for Clang
  uprobes/x86: Fix fall-through warnings for Clang
  vxge: Fix fall-through warnings for Clang
  watchdog: Fix fall-through warnings for Clang
  xen-blkfront: Fix fall-through warnings for Clang
  regulator: as3722: Fix fall-through warnings for Clang
  habanalabs: Fix fall-through warnings for Clang
  tee: Fix fall-through warnings for Clang
  HID: usbhid: Fix fall-through warnings for Clang
  HID: input: Fix fall-through warnings for Clang
  ACPI: Fix fall-through warnings for Clang
  airo: Fix fall-through warnings for Clang
  ALSA: hdspm: Fix fall-through warnings for Clang
  ALSA: pcsp: Fix fall-through warnings for Clang
  ALSA: sb: Fix fall-through warnings for Clang
  ath5k: Fix fall-through warnings for Clang
  atm: fore200e: Fix fall-through warnings for Clang
  braille_console: Fix fall-through warnings for Clang
  can: peak_usb: Fix fall-through warnings for Clang
  carl9170: Fix fall-through warnings for Clang
  cfg80211: Fix fall-through warnings for Clang
  crypto: ccree - Fix fall-through warnings for Clang
  decnet: Fix fall-through warnings for Clang
  dm raid: Fix fall-through warnings for Clang
  drm/amd/pm: Fix fall-through warnings for Clang
  drm: Fix fall-through warnings for Clang
  drm/i915/gem: Fix fall-through warnings for Clang
  drm/nouveau/clk: Fix fall-through warnings for Clang
  drm/nouveau: Fix fall-through warnings for Clang
  drm/nouveau/therm: Fix fall-through warnings for Clang
  drm/via: Fix fall-through warnings for Clang
  firewire: core: Fix fall-through warnings for Clang
  hwmon: (corsair-cpro) Fix fall-through warnings for Clang
  hwmon: (max6621) Fix fall-through warnings for Clang
  i3c: master: cdns: Fix fall-through warnings for Clang
  ide: Fix fall-through warnings for Clang
  iio: adc: cpcap: Fix fall-through warnings for Clang
  iwlwifi: iwl-drv: Fix fall-through warnings for Clang
  libata: Fix fall-through warnings for Clang
  mac80211: Fix fall-through warnings for Clang
  media: atomisp: Fix fall-through warnings for Clang
  media: dvb_frontend: Fix fall-through warnings for Clang
  media: rcar_jpu: Fix fall-through warnings for Clang
  media: saa7134: Fix fall-through warnings for Clang
  mmc: sdhci-of-arasan: Fix fall-through warnings for Clang
  mt76: mt7615: Fix fall-through warnings for Clang
  mtd: cfi: Fix fall-through warnings for Clang
  mtd: mtdchar: Fix fall-through warnings for Clang
  mtd: onenand: Fix fall-through warnings for Clang
  mtd: rawnand: fsmc: Fix fall-through warnings for Clang
  mtd: rawnand: stm32_fmc2: Fix fall-through warnings for Clang
  net: ax25: Fix fall-through warnings for Clang
  net: bridge: Fix fall-through warnings for Clang
  net: core: Fix fall-through warnings for Clang
  netfilter: ipt_REJECT: Fix fall-through warnings for Clang
  net: netrom: Fix fall-through warnings for Clang
  net/packet: Fix fall-through warnings for Clang
  net: plip: Fix fall-through warnings for Clang
  net: rose: Fix fall-through warnings for Clang
  nl80211: Fix fall-through warnings for Clang
  phy: qcom-usb-hs: Fix fall-through warnings for Clang
  rds: Fix fall-through warnings for Clang
  rt2x00: Fix fall-through warnings for Clang
  rtl8xxxu: Fix fall-through warnings for Clang
  rtw88: Fix fall-through warnings for Clang
  rxrpc: Fix fall-through warnings for Clang
  scsi: aacraid: Fix fall-through warnings for Clang
  scsi: aha1740: Fix fall-through warnings for Clang
  scsi: csiostor: Fix fall-through warnings for Clang
  scsi: lpfc: Fix fall-through warnings for Clang
  scsi: stex: Fix fall-through warnings for Clang
  sctp: Fix fall-through warnings for Clang
  slimbus: messaging: Fix fall-through warnings for Clang
  staging: qlge: Fix fall-through warnings for Clang
  staging: vt6656: Fix fall-through warnings for Clang
  SUNRPC: Fix fall-through warnings for Clang
  tipc: Fix fall-through warnings for Clang
  tpm: Fix fall-through warnings for Clang
  ubi: Fix fall-through warnings for Clang
  usb: Fix fall-through warnings for Clang
  video: fbdev: lxfb_ops: Fix fall-through warnings for Clang
  video: fbdev: pm2fb: Fix fall-through warnings for Clang
  virtio_net: Fix fall-through warnings for Clang
  wcn36xx: Fix fall-through warnings for Clang
  xen/manage: Fix fall-through warnings for Clang
  xfrm: Fix fall-through warnings for Clang
  zd1201: Fix fall-through warnings for Clang
  Input: libps2 - Fix fall-through warnings for Clang

 arch/x86/events/core.c                                    | 2 +-
 arch/x86/kernel/kprobes/core.c                            | 1 +
 arch/x86/kernel/uprobes.c                                 | 2 ++
 drivers/accessibility/braille/braille_console.c           | 1 +
 drivers/acpi/sbshc.c                                      | 1 +
 drivers/ata/libata-eh.c                                   | 1 +
 drivers/atm/fore200e.c                                    | 1 +
 drivers/block/drbd/drbd_receiver.c                        | 1 +
 drivers/block/drbd/drbd_req.c                             | 1 +
 drivers/block/floppy.c                                    | 1 +
 drivers/block/xen-blkfront.c                              | 1 +
 drivers/char/tpm/eventlog/tpm1.c                          | 1 +
 drivers/crypto/ccree/cc_cipher.c                          | 3 +++
 drivers/firewire/core-topology.c                          | 1 +
 drivers/gpio/gpio-ath79.c                                 | 1 +
 drivers/gpio/gpiolib-acpi.c                               | 1 +
 drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c                    | 1 +
 drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c                     | 1 +
 drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c                     | 1 +
 drivers/gpu/drm/amd/amdgpu/vi.c                           | 1 +
 drivers/gpu/drm/amd/display/dc/bios/bios_parser.c         | 1 +
 drivers/gpu/drm/amd/display/dc/bios/bios_parser2.c        | 2 ++
 drivers/gpu/drm/amd/display/dc/core/dc_link.c             | 1 +
 drivers/gpu/drm/amd/pm/powerplay/si_dpm.c                 | 2 +-
 .../gpu/drm/amd/pm/powerplay/smumgr/polaris10_smumgr.c    | 1 +
 drivers/gpu/drm/drm_bufs.c                                | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c              | 1 +
 drivers/gpu/drm/nouveau/nouveau_bo.c                      | 1 +
 drivers/gpu/drm/nouveau/nouveau_connector.c               | 1 +
 drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv50.c            | 1 +
 drivers/gpu/drm/nouveau/nvkm/subdev/therm/gf119.c         | 1 +
 drivers/gpu/drm/radeon/ci_dpm.c                           | 2 +-
 drivers/gpu/drm/radeon/r300.c                             | 1 +
 drivers/gpu/drm/radeon/si_dpm.c                           | 2 +-
 drivers/gpu/drm/via/via_irq.c                             | 1 +
 drivers/hid/hid-input.c                                   | 1 +
 drivers/hid/usbhid/hid-core.c                             | 2 ++
 drivers/hwmon/corsair-cpro.c                              | 1 +
 drivers/hwmon/max6621.c                                   | 2 +-
 drivers/i3c/master/i3c-master-cdns.c                      | 2 ++
 drivers/ide/siimage.c                                     | 1 +
 drivers/iio/adc/cpcap-adc.c                               | 1 +
 drivers/infiniband/hw/hfi1/qp.c                           | 1 +
 drivers/infiniband/hw/hfi1/tid_rdma.c                     | 5 +++++
 drivers/infiniband/hw/mlx4/mad.c                          | 1 +
 drivers/infiniband/hw/mlx5/qp.c                           | 1 +
 drivers/infiniband/hw/qedr/main.c                         | 1 +
 drivers/input/misc/pcspkr.c                               | 1 +
 drivers/input/serio/libps2.c                              | 2 +-
 drivers/md/dm-raid.c                                      | 1 +
 drivers/media/dvb-core/dvb_frontend.c                     | 1 +
 drivers/media/dvb-frontends/cx24120.c                     | 1 +
 drivers/media/dvb-frontends/dib0090.c                     | 2 ++
 drivers/media/dvb-frontends/drxk_hard.c                   | 1 +
 drivers/media/dvb-frontends/m88rs2000.c                   | 1 +
 drivers/media/pci/saa7134/saa7134-tvaudio.c               | 1 +
 drivers/media/platform/rcar_jpu.c                         | 1 +
 drivers/media/usb/dvb-usb-v2/af9015.c                     | 1 +
 drivers/media/usb/dvb-usb-v2/lmedm04.c                    | 1 +
 drivers/misc/habanalabs/gaudi/gaudi.c                     | 1 +
 drivers/mmc/host/sdhci-of-arasan.c                        | 4 ++++
 drivers/mtd/chips/cfi_cmdset_0001.c                       | 1 +
 drivers/mtd/chips/cfi_cmdset_0002.c                       | 2 ++
 drivers/mtd/chips/cfi_cmdset_0020.c                       | 2 ++
 drivers/mtd/mtdchar.c                                     | 1 +
 drivers/mtd/nand/onenand/onenand_samsung.c                | 1 +
 drivers/mtd/nand/raw/fsmc_nand.c                          | 1 +
 drivers/mtd/nand/raw/stm32_fmc2_nand.c                    | 2 ++
 drivers/mtd/ubi/build.c                                   | 1 +
 drivers/net/can/usb/peak_usb/pcan_usb_core.c              | 2 ++
 drivers/net/ethernet/3com/3c509.c                         | 1 +
 drivers/net/ethernet/broadcom/bnxt/bnxt.c                 | 1 +
 drivers/net/ethernet/intel/e1000/e1000_hw.c               | 1 +
 drivers/net/ethernet/intel/fm10k/fm10k_mbx.c              | 2 ++
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c             | 1 +
 drivers/net/ethernet/intel/igb/e1000_phy.c                | 1 +
 drivers/net/ethernet/intel/igb/igb_ethtool.c              | 1 +
 drivers/net/ethernet/intel/igb/igb_ptp.c                  | 1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c            | 2 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe_common.c           | 1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c              | 1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c              | 1 +
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c         | 1 +
 drivers/net/ethernet/mellanox/mlx4/resource_tracker.c     | 1 +
 drivers/net/ethernet/mscc/ocelot_vcap.c                   | 1 +
 drivers/net/ethernet/neterion/vxge/vxge-config.c          | 1 +
 drivers/net/ethernet/netronome/nfp/nfp_net_repr.c         | 1 +
 drivers/net/ethernet/qlogic/netxen/netxen_nic_init.c      | 1 +
 drivers/net/ethernet/qlogic/qed/qed_l2.c                  | 1 +
 drivers/net/ethernet/qlogic/qed/qed_sriov.c               | 1 +
 drivers/net/ethernet/qlogic/qlcnic/qlcnic_io.c            | 1 +
 drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c          | 1 +
 drivers/net/ethernet/sun/cassini.c                        | 1 +
 drivers/net/plip/plip.c                                   | 2 ++
 drivers/net/virtio_net.c                                  | 1 +
 drivers/net/wireless/ath/ath5k/mac80211-ops.c             | 1 +
 drivers/net/wireless/ath/carl9170/tx.c                    | 1 +
 drivers/net/wireless/ath/wcn36xx/smd.c                    | 2 +-
 drivers/net/wireless/cisco/airo.c                         | 1 +
 drivers/net/wireless/intel/iwlwifi/iwl-drv.c              | 2 +-
 drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c        | 2 +-
 drivers/net/wireless/ralink/rt2x00/rt2x00queue.c          | 1 +
 drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_core.c     | 8 ++++----
 drivers/net/wireless/realtek/rtw88/fw.c                   | 2 +-
 drivers/net/wireless/zydas/zd1201.c                       | 2 +-
 drivers/phy/qualcomm/phy-qcom-usb-hs.c                    | 1 +
 drivers/pinctrl/renesas/pinctrl-rza1.c                    | 1 +
 drivers/regulator/as3722-regulator.c                      | 3 ++-
 drivers/scsi/aacraid/commsup.c                            | 1 +
 drivers/scsi/aha1740.c                                    | 1 +
 drivers/scsi/aic7xxx/aic79xx_core.c                       | 4 +++-
 drivers/scsi/aic7xxx/aic7xxx_core.c                       | 4 ++--
 drivers/scsi/aic94xx/aic94xx_scb.c                        | 2 ++
 drivers/scsi/aic94xx/aic94xx_task.c                       | 2 ++
 drivers/scsi/bfa/bfa_fcs_lport.c                          | 2 +-
 drivers/scsi/bfa/bfa_ioc.c                                | 6 ++++--
 drivers/scsi/csiostor/csio_wr.c                           | 1 +
 drivers/scsi/lpfc/lpfc_bsg.c                              | 1 +
 drivers/scsi/stex.c                                       | 1 +
 drivers/slimbus/messaging.c                               | 1 +
 drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c   | 1 +
 drivers/staging/qlge/qlge_main.c                          | 1 +
 drivers/staging/rtl8723bs/core/rtw_cmd.c                  | 1 +
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c             | 1 +
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c            | 1 +
 drivers/staging/vt6655/device_main.c                      | 1 +
 drivers/staging/vt6655/rxtx.c                             | 2 ++
 drivers/staging/vt6656/main_usb.c                         | 1 +
 drivers/target/target_core_iblock.c                       | 1 +
 drivers/target/target_core_pr.c                           | 1 +
 drivers/tee/tee_core.c                                    | 1 +
 drivers/usb/gadget/function/f_fs.c                        | 2 ++
 drivers/usb/gadget/function/f_loopback.c                  | 2 +-
 drivers/usb/gadget/function/f_sourcesink.c                | 1 +
 drivers/usb/gadget/udc/dummy_hcd.c                        | 2 ++
 drivers/usb/host/fotg210-hcd.c                            | 2 +-
 drivers/usb/host/isp116x-hcd.c                            | 1 +
 drivers/usb/host/max3421-hcd.c                            | 1 +
 drivers/usb/host/oxu210hp-hcd.c                           | 1 +
 drivers/usb/misc/yurex.c                                  | 1 +
 drivers/usb/musb/tusb6010.c                               | 1 +
 drivers/usb/storage/ene_ub6250.c                          | 1 +
 drivers/usb/storage/uas.c                                 | 1 +
 drivers/video/fbdev/geode/lxfb_ops.c                      | 1 +
 drivers/video/fbdev/pm2fb.c                               | 1 +
 drivers/watchdog/machzwd.c                                | 1 +
 drivers/xen/manage.c                                      | 1 +
 fs/afs/cmservice.c                                        | 5 +++++
 fs/afs/fsclient.c                                         | 4 ++++
 fs/afs/vlclient.c                                         | 1 +
 fs/ceph/dir.c                                             | 2 ++
 fs/cifs/inode.c                                           | 1 +
 fs/cifs/sess.c                                            | 1 +
 fs/cifs/smbdirect.c                                       | 1 +
 fs/ext2/inode.c                                           | 1 +
 fs/ext4/super.c                                           | 1 +
 fs/gfs2/inode.c                                           | 2 ++
 fs/gfs2/recovery.c                                        | 1 +
 fs/isofs/rock.c                                           | 1 +
 fs/nfs/nfs3acl.c                                          | 1 +
 fs/nfs/nfs4client.c                                       | 1 +
 fs/nfs/nfs4proc.c                                         | 2 ++
 fs/nfs/nfs4state.c                                        | 1 +
 fs/nfs/pnfs.c                                             | 2 ++
 fs/nfsd/nfs4state.c                                       | 1 +
 fs/nfsd/nfsctl.c                                          | 1 +
 fs/reiserfs/namei.c                                       | 1 +
 mm/mm_init.c                                              | 1 +
 mm/vmscan.c                                               | 1 +
 net/ax25/af_ax25.c                                        | 1 +
 net/bridge/br_input.c                                     | 1 +
 net/core/dev.c                                            | 1 +
 net/decnet/dn_route.c                                     | 2 +-
 net/ipv4/ah4.c                                            | 1 +
 net/ipv4/esp4.c                                           | 1 +
 net/ipv4/fib_semantics.c                                  | 1 +
 net/ipv4/ip_vti.c                                         | 1 +
 net/ipv4/ipcomp.c                                         | 1 +
 net/ipv4/netfilter/ipt_REJECT.c                           | 1 +
 net/mac80211/cfg.c                                        | 2 ++
 net/netfilter/nf_conntrack_proto_dccp.c                   | 1 +
 net/netfilter/nf_tables_api.c                             | 1 +
 net/netfilter/nft_ct.c                                    | 1 +
 net/netrom/nr_route.c                                     | 4 ++++
 net/packet/af_packet.c                                    | 1 +
 net/rds/tcp_connect.c                                     | 1 +
 net/rds/threads.c                                         | 2 ++
 net/rose/rose_route.c                                     | 2 ++
 net/rxrpc/af_rxrpc.c                                      | 1 +
 net/sctp/input.c                                          | 3 ++-
 net/sunrpc/rpc_pipe.c                                     | 1 +
 net/sunrpc/xprtsock.c                                     | 1 +
 net/tipc/link.c                                           | 1 +
 net/wireless/nl80211.c                                    | 1 +
 net/wireless/util.c                                       | 1 +
 net/xfrm/xfrm_interface.c                                 | 1 +
 security/integrity/ima/ima_main.c                         | 1 +
 security/integrity/ima/ima_policy.c                       | 2 ++
 security/keys/process_keys.c                              | 1 +
 security/selinux/hooks.c                                  | 1 +
 sound/drivers/pcsp/pcsp_input.c                           | 1 +
 sound/isa/sb/sb8_main.c                                   | 1 +
 sound/pci/rme9652/hdspm.c                                 | 1 +
 sound/soc/codecs/adav80x.c                                | 1 +
 sound/soc/codecs/arizona.c                                | 1 +
 sound/soc/codecs/cs42l52.c                                | 1 +
 sound/soc/codecs/cs42l56.c                                | 1 +
 sound/soc/codecs/cs47l92.c                                | 1 +
 sound/soc/codecs/wm8962.c                                 | 1 +
 209 files changed, 264 insertions(+), 26 deletions(-)

-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/cover.1605896059.git.gustavoars%40kernel.org.
