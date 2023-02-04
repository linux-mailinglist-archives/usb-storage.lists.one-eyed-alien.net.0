Return-Path: <usb-storage+bncBCF5XGNWYQBRBBOL7KPAMGQEYZVK36I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 6838468ABDD
	for <lists+usb-storage@lfdr.de>; Sat,  4 Feb 2023 19:35:51 +0100 (CET)
Received: by mail-pf1-x446.google.com with SMTP id z7-20020aa79587000000b00593f19705d5sf4309695pfj.10
        for <lists+usb-storage@lfdr.de>; Sat, 04 Feb 2023 10:35:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675535750; cv=pass;
        d=google.com; s=arc-20160816;
        b=R8YELZomCAbk1gd4VIrXk6oV/CjdhRzBeZH4iInVSxHF1dQqM36ItgyMDPWH1HLLvd
         UVDSbQR5HZb5A7QmVQaGjYEUk1QKzqFVBYfFqOqbtgh3+SQLK7gzdk/1Zs9kL+5bjX7S
         ADGxJg2fh7ymsIeW7XjeGTIxEVNBG4vGGcBe5MBuormG2i8c5xs2XRLQTJBM+HXQZSZq
         FPjU7fqNxN6q75kJO9vFK2/qXYQ1YHkJXjcAxs3jReU9sKIYofrv2lI1B2x3BEp1L0T+
         Tlc7o23ZAJYK0kmODe8MndqDQftahs2Y2toH8yR+4sTn/OCuELRqRTRGvMtpiWe53RGc
         u9Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=2brhFe0Lah0LQ8RBGGgT2xu9JnsZKFW8IEVips6PCGk=;
        b=NC4VE5qTR5PoeMUDhT6V73gwe4kDIJTXKZi7Pl92mOsFQaeLBUp+y6CrmfN65lDeYH
         rWQJ6u32Q2EY8+BfpOtENk+EacZXJavaEMEbTvxRbz296WKBI/Ri2n3S2CBczFjaTKC/
         ros/9RXN2f3rORcSs2BrlWU7KFYNyQN9Tuok9PGzaT49MFsOAvlfYSTOnko482e1P1L0
         yYcGp9RqU+L7HLXAfhhlJXYH3vYuMaDSsTsaCu0kz+9qqo4BZgRnkcCWt/OqbhJqu2Rg
         kWf7HFG/Tz8R2+lO/tf1ITKaK1yH5Xnk9/SQU8jCWar1lZDjGMO1UzXyK6+I62eyY/Kl
         KZvA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YGU2UvvQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=2brhFe0Lah0LQ8RBGGgT2xu9JnsZKFW8IEVips6PCGk=;
        b=RnL2OdCfUuX/6O7tnI6HbtSCYr1Gt+lSFRqyImEi+JvYdcTRsnQPyOSqoGzF7xYZuZ
         N8JBnzEIn1cJD8pnoGXWZg8eafCB7sQeobY3c2kEFo3UDHBKKGkTZ2A/KPpO+4CXn7SE
         WIr6Izif3jtdufmFSq5HtCyLFs/0DSomkDAJU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2brhFe0Lah0LQ8RBGGgT2xu9JnsZKFW8IEVips6PCGk=;
        b=JHHpFJMGrZPtngGyQh/30dJgKnKeORoisXehqmXWjWR6+WfTDAr2JWs75kD2NWmHmO
         s5X4Ct5hdQ6X1kZhEWJtTeXE1lCwyq7ACJSlKw8qJwdGis5xPvAf6TEOpW0eYGuIk4GB
         zlMHqrt/QRW8nkD8PDp7AHMahgzGoiCw7DBCOc3wNgEOvElgnIjRiSLoClyQ/wXwg6VC
         kOlbSWk+qq3bNBNvXpNuFra8LjFU+uvRFMXv+tSfrUmbm6wyNsO6vyp2SRvxQR5XH6cG
         k1ppdV0IS0AtYO+jTg5zl4cClmVMJER47y8x/6wdoo0QQpd5Cwgim1pIy2cNHUy+Cddl
         16VA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKWWxv5nzIPUVEhBa9SCxOprQFzPij68r0aFP4cTjRVkwbEdaDSL
	rrA2AIzdhDm/LFiGh38sxkBNZg==
X-Google-Smtp-Source: AK7set8RgYPOxv8NKjfFvaaa0li6aSaye902pr6ExiCw+lqMFkbmdGxNoCsUf4m/a98ioO4/ryTkTw==
X-Received: by 2002:a62:2983:0:b0:593:9de3:47b7 with SMTP id p125-20020a622983000000b005939de347b7mr3417586pfp.35.1675535749713;
        Sat, 04 Feb 2023 10:35:49 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:c3c5:b0:186:9fc5:6c01 with SMTP id
 j5-20020a170902c3c500b001869fc56c01ls8514996plj.6.-pod-prod-gmail; Sat, 04
 Feb 2023 10:35:48 -0800 (PST)
X-Received: by 2002:a05:6a20:ca5c:b0:bc:e98a:8ae with SMTP id hg28-20020a056a20ca5c00b000bce98a08aemr12893340pzb.59.1675535748788;
        Sat, 04 Feb 2023 10:35:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675535748; cv=none;
        d=google.com; s=arc-20160816;
        b=NvgjM4x2cWWkXG3Xx6Hct545+Zc4eVXXlyjQkiPHYKlA3PuD8TxsNpuN00Xiw339QN
         v49tooWYjz2Jag8S2pVQQRJmo3nozeTvVKDoIEHE5LN1Ptp3owC6R3TMEjJj1GlJEVUr
         jUPWVCcF95s2NpdzIiMihx41wbl93KD8OXWEEYn4AzPdSZ3TQ55hahFrcGU5kMEtENKf
         oIm2qcIJj9nbr2ySGpl1kAq7XhL/yyhglQ0+NUklHScqMOjvfVXp0olGwGjdzkI/lqe2
         49rjCQPJle+rvIZ2kL/A+Op0YRCc9GjZcLBDbL9LmWz6JfShjZHkgykWOOIbzAE282SG
         flqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=y4Iggp5kqvksO/U/bhTVuafQ0FnnRUqQxs3NZ2skqWs=;
        b=siO95S/SbRpC8xmoTO601dm66ThfQhptXxuVEYrvJQgTPXNitO7zF6RG/w8kMiLEWu
         70hRl3d30pw9c3Fr7u2C9a7wvYWX1lReBu6pl7aAoGH4+B6Af21jyHXGIByOjVblKPOG
         byQ4c9ZRgqLSEguKDqJZ6zEnICQ3t3JCrS869204LCGUNYzpz1Zv7DBKWSdgMo88vpic
         P/i2sF/iblMtlqJ7UX0ZbIWevQj4fI86AMmu0IMtbuSdDE0KEccMY7kMNmba/QSotLz0
         aorno9DiYlUvrji30Y1YV/d/aQNTMZuZ3zMg0pMfJqSwy9tCvyN81gV1DO/g3o1zTM1Z
         RNQw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YGU2UvvQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id y22-20020a17090264d600b00198dd382cd1sor2117882pli.46.2023.02.04.10.35.48
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 04 Feb 2023 10:35:48 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:903:30d4:b0:198:eaac:4643 with SMTP id s20-20020a17090330d400b00198eaac4643mr3371011plc.4.1675535748368;
        Sat, 04 Feb 2023 10:35:48 -0800 (PST)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net. [198.0.35.241])
        by smtp.gmail.com with ESMTPSA id x14-20020a170902a38e00b001947ba0ac8fsm1258800pla.236.2023.02.04.10.35.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Feb 2023 10:35:48 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Kees Cook <keescook@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [usb-storage] [PATCH] USB: ene_usb6250: Allocate enough memory for
 full object
Date: Sat,  4 Feb 2023 10:35:46 -0800
Message-Id: <20230204183546.never.849-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2821; h=from:subject:message-id; bh=HZQ/N+dDa7Aj5LUGfDBEb4DGw2KcwT9Ja3nU44I+6Qw=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBj3qWCaI/XfC+dVjIlk4z3PejMwVwypoWj0t55dUNY ngLmhQmJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCY96lggAKCRCJcvTf3G3AJrbCD/ 9/OMKzc0Ea/9XHo64RRzTHtQLOvCN4nDl6tDnY8I1zWmllZ4q7R4+dmSxpbDIlA1KsOMbqJv2uZ3j5 xU9a2RW8+9cuCUgglfThFn9yjAPn1h89UITBR6tUi66w+Grrrdqabel966IsLL4h0anfdvniLx9/Q+ 1gLIInMAeYSny+rZXufLpRHcsPV5/arwLM6+LhebZHEU0XgPYkzu78s6vN2nl7OX7oznGan2XOpyWL kImWBreBw5D9hD5Wz84Nwz0c9oTNLTzZElayos7V/uArYc5g0sjwNhZT43GlePcRiqDz5YRUCLHMUI /K63RXa6N+Ch7kLHz+Omnb0TG+PD5yo0jQ086va23SsFfob6w1eniL3YEyMwf6p2jnJor+w9yLC6Et X80luhybjh3sy7/0+kv3H/eQTqGfpwkmgOg7tbP/7oyOuoRaao84Y+7ZihUBDPjgw7QXidM/84PNsE vl3CSDyif7jEsz37rqaD+SmUhw9r61ZRPHqcC96s1IhKbEx2DHGBtrDX11Ujx4MsTsrwS9uaMClIO2 c3LeUjG/p85F6vlRU5h0rahbAFsFntLTrIVfxIf1vpscY9Z7Hkq0PmxL3BOM/GsX4Iv42pg1jjF4wi ws5dSc4t27nmVzA239IFWffYQbmVO4gbgpLtpR5L6qrz+uYyMftjEgLZdgzw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=YGU2UvvQ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

The allocation of PageBuffer is 512 bytes in size, but the dereferencing
of struct ms_bootblock_idi (also size 512) happens at a calculated offset
within the allocation, which means the object could potentially extend
beyond the end of the allocation. Avoid this case by just allocating
enough space to catch any accesses beyond the end. Seen with GCC 13:

../drivers/usb/storage/ene_ub6250.c: In function 'ms_lib_process_bootblock':
../drivers/usb/storage/ene_ub6250.c:1050:44: warning: array subscript 'struct ms_bootblock_idi[0]' is partly outside array bounds of 'unsigned char[512]' [-Warray-bounds=]
 1050 |                         if (le16_to_cpu(idi->wIDIgeneralConfiguration) != MS_IDI_GENERAL_CONF)
      |                                            ^~
../include/uapi/linux/byteorder/little_endian.h:37:51: note: in definition of macro '__le16_to_cpu'
   37 | #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
      |                                                   ^
../drivers/usb/storage/ene_ub6250.c:1050:29: note: in expansion of macro 'le16_to_cpu'
 1050 |                         if (le16_to_cpu(idi->wIDIgeneralConfiguration) != MS_IDI_GENERAL_CONF)
      |                             ^~~~~~~~~~~
In file included from ../drivers/usb/storage/ene_ub6250.c:5:
In function 'kmalloc',
    inlined from 'ms_lib_process_bootblock' at ../drivers/usb/storage/ene_ub6250.c:942:15:
../include/linux/slab.h:580:24: note: at offset [256, 512] into object of size 512 allocated by 'kmalloc_trace'
  580 |                 return kmalloc_trace(
      |                        ^~~~~~~~~~~~~~
  581 |                                 kmalloc_caches[kmalloc_type(flags)][index],
      |                                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  582 |                                 flags, size);
      |                                 ~~~~~~~~~~~~

Cc: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/usb/storage/ene_ub6250.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/ene_ub6250.c b/drivers/usb/storage/ene_ub6250.c
index 6012603f3630..97c66c0d91f4 100644
--- a/drivers/usb/storage/ene_ub6250.c
+++ b/drivers/usb/storage/ene_ub6250.c
@@ -939,7 +939,7 @@ static int ms_lib_process_bootblock(struct us_data *us, u16 PhyBlock, u8 *PageDa
 	struct ms_lib_type_extdat ExtraData;
 	struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;
 
-	PageBuffer = kmalloc(MS_BYTES_PER_PAGE, GFP_KERNEL);
+	PageBuffer = kzalloc(MS_BYTES_PER_PAGE * 2, GFP_KERNEL);
 	if (PageBuffer == NULL)
 		return (u32)-1;
 
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20230204183546.never.849-kees%40kernel.org.
