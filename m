Return-Path: <usb-storage+bncBDXO746SYYBRB2WH576QKGQENI2BJVA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd47.google.com (mail-io1-xd47.google.com [IPv6:2607:f8b0:4864:20::d47])
	by mail.lfdr.de (Postfix) with ESMTPS id 646D42C104C
	for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 17:31:39 +0100 (CET)
Received: by mail-io1-xd47.google.com with SMTP id q126sf13261188iof.3
        for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 08:31:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606149098; cv=pass;
        d=google.com; s=arc-20160816;
        b=ol7wCMKLJauvaPlUmX/qpQlyo3vRDExfbCfJo9Ezj01+83XtpvUbOalARbvvYelznI
         OieHClv/XMR4L0o3eN3KwedYDj+eQHOL+F8em//kbcpw/3Wyh1JamcRMfVeqiPEhmVcS
         g7sS2B1gpV5C4haIWim7j5u+70ZO2ojBGhiB2afKg5QjH0wJ5kL36iVv7k09KwW/bcXz
         fNE/PBNWyX/JBKrTsjHEclLTs08nlzCszsJ85VjD9GSNb54g0ClpgTfqu0IYBoUqZQMn
         fXCj2PXhH/PcYxwXIN96uN13JLduVYkhq4tbYGOXQjGlM0rqz1+fjuZmyFhd2wifjV/y
         1k0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=jAn1BPNQRnlxoNyTXqDXhN8LVO3Z1Okt3J4TgwOlov0=;
        b=P4+J+FXnF7TDoSI8ruB7Cm1yYBFLYzVC/YryChF9+8TH8l5IyHz6NTk6zUhIKh1FDB
         d4ctt4ViJiemucOTRWJoICULXNCgJgkDWi6rI23/yoYugSyx0R/rE5V2cjMzXWxR0mZn
         znx+F+48ssxTi3Wvg+Hf3xmdmfB5wHFbIzggKxUl13+FkTPiJE4QA4Hcke9Rhui5pqKd
         835oOn97qNi9J3vyqLltP0F1sHSvKzwxbQ4BwCGhbqeohOj9l/UFRLLREirnC8oe97Ga
         MaX+99J4qm1oXW0qAd3pmPz5D7IBhX0olKVlZXv6XCzmmlQ8scuXbFlcQhxHSn/7PLqO
         7FGw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=taYTQdLW;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=taYTQdLW;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jAn1BPNQRnlxoNyTXqDXhN8LVO3Z1Okt3J4TgwOlov0=;
        b=JnkbT6VlEVH7GVyLD1Wffhw9tXzoBPoWzZA2qptv3R4vuHgvGHjVc7IzgvCatCTBuG
         1jCOMwmAzlkt83fb3a5bgIUkOSymnLatKlK1hfKLM5s2Sqj7IYGmB8nnK9Bk2yYPcGR4
         n8bpPeyz/TG3gHo0jq3mSQwaO0RKb3DNzIVbE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jAn1BPNQRnlxoNyTXqDXhN8LVO3Z1Okt3J4TgwOlov0=;
        b=qASrtpqI3xjeXarj2+2j2D5eSeqFvFUGwmY/8q5ghpoIdAMs6k1B3/O2QVot/taTXi
         yh8F0Lp4Qf1AgQTi3T+USQavgvqt0mvZCtcUwTS9YY6AGPqGh00uV5S+c3GYOPYTxdmN
         omIjoFR9JVmNP851YefvxYdtu04Y/WhXCxqJ4+F5Y/VDsWWHwRboC0L1FKoXov9Va++I
         PEkWhy+yUylBsTDBmQcQDbTQuUtZS1qZW0jIa+2ZOSZoOWsuTJqxY4uKtqcLmJZ4vAev
         AT0S9gH9hRYr+W9zbbTftc/rvJio4DhwhIgWWgvIuuIoxDOB5VWsq8DegRbSsvFBfcD2
         LDtw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532HHFzkytu63Xf7/A8F8K/10WQM2qokgEBe/B2iUvZzqInmMJJo
	KjcHRQ1dftt64ED2Pt/i6y9ALw==
X-Google-Smtp-Source: ABdhPJwhxz5rM9Ay7OYkTHtE1rUb65eOXuZf+wSya6LiNtfwFRHUsnIzF0SresYFsCVZy1OymhnVVg==
X-Received: by 2002:a5e:c608:: with SMTP id f8mr445176iok.45.1606149098332;
        Mon, 23 Nov 2020 08:31:38 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:3f0c:: with SMTP id m12ls2826537ila.3.gmail; Mon, 23 Nov
 2020 08:31:37 -0800 (PST)
X-Received: by 2002:a92:999c:: with SMTP id t28mr513174ilk.236.1606149097823;
        Mon, 23 Nov 2020 08:31:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606149097; cv=none;
        d=google.com; s=arc-20160816;
        b=lYCNUJNgHGfOHJ6mNBiiv4LPAQT4LA9OYtknWjcV772BOI4JPcvWxhXu9Z07gZudYS
         SkhQGIxuJaiA8JUHiT4s6iNKP9j6ND+AmKCX/2956DhsYp8+Bdur75SnNn7UbqWIFHEY
         boRvYuOhX5A4brAy27GB+oZIJSUcSOg2lAVzloo+TZcUHthROkq7/VWv2Z41oGo4TSQF
         zg8xVCveVhUEDWZKrcPVHVxopKln35lD5VSSyzw+wDPpErJFwEmE5owvX1u8rjYcdegQ
         F1z5OiwiRNSHFpVzoC42vb9nyDXiMfcFZKH2J+nw+YgzwoeBfnCIW0sGyGXespfhBPGJ
         Qncg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=ZIvvAG9406Lo9QxoJXd5U1PONksk/B/z96UeWzByvdE=;
        b=Qj0u+Aq38NKqXGRdLOE0ccAEa38InMmAzb/AIXktvr5SVzptpohzuEV9pbFU2Tr63c
         nD3EOaAJBF4qxgsgHh+cMxuUJOkPOZUkCPZ8zgX1BtUZJCVSWRXKpyk87wJEkr5pvXvT
         CVL4VZkhUIVeZi9Q/4EbrHT/cBDL6oHlEOF0m+yf37Wb2gc5KQnU/qN+cKnC6vWPuoR9
         DNRKFAJn8Lr01piOrIWP2BL8SEk0eLJuc9Us4SKXE0I+t792jJ9SNxiudUR2l+JwxK0F
         9jML42+DzxPkWlFtMotyZoLQH7f7QsQNhR5JsG3UHwwdI8DUhyweWfjXC76auSWLeY/7
         tSfw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=taYTQdLW;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=taYTQdLW;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [2607:fcd0:100:8a00::2])
        by mx.google.com with ESMTPS id r2si2900965ilc.77.2020.11.23.08.31.37
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Nov 2020 08:31:37 -0800 (PST)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) client-ip=2607:fcd0:100:8a00::2;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 7EDBD12808F6;
	Mon, 23 Nov 2020 08:31:35 -0800 (PST)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S05__PC1UR2d; Mon, 23 Nov 2020 08:31:35 -0800 (PST)
Received: from jarvis.int.hansenpartnership.com (unknown [IPv6:2601:600:8280:66d1::527])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 9FAA112808A8;
	Mon, 23 Nov 2020 08:31:31 -0800 (PST)
Message-ID: <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com>
Subject: [usb-storage] Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Joe Perches <joe@perches.com>, Kees Cook <keescook@chromium.org>, Jakub
 Kicinski <kuba@kernel.org>, alsa-devel@alsa-project.org,
 linux-atm-general@lists.sourceforge.net,  reiserfs-devel@vger.kernel.org,
 linux-iio@vger.kernel.org,  linux-wireless@vger.kernel.org,
 linux-fbdev@vger.kernel.org,  dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Nathan Chancellor <natechancellor@gmail.com>,
 linux-ide@vger.kernel.org, dm-devel@redhat.com,  keyrings@vger.kernel.org,
 linux-mtd@lists.infradead.org,  GR-everest-linux-l2@marvell.com,
 wcn36xx@lists.infradead.org,  samba-technical@lists.samba.org,
 linux-i3c@lists.infradead.org,  linux1394-devel@lists.sourceforge.net,
 linux-afs@lists.infradead.org,  usb-storage@lists.one-eyed-alien.net,
 drbd-dev@lists.linbit.com,  devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,  Nick Desaulniers
 <ndesaulniers@google.com>, linux-scsi@vger.kernel.org,
 linux-rdma@vger.kernel.org,  oss-drivers@netronome.com,
 bridge@lists.linux-foundation.org,  linux-security-module@vger.kernel.org,
 amd-gfx@lists.freedesktop.org,  linux-stm32@st-md-mailman.stormreply.com,
 cluster-devel@redhat.com,  linux-acpi@vger.kernel.org,
 coreteam@netfilter.org,  intel-wired-lan@lists.osuosl.org,
 linux-input@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 tipc-discussion@lists.sourceforge.net,  linux-ext4@vger.kernel.org,
 linux-media@vger.kernel.org,  linux-watchdog@vger.kernel.org,
 selinux@vger.kernel.org,  linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,  linux-geode@lists.infradead.org,
 linux-can@vger.kernel.org,  linux-block@vger.kernel.org,
 linux-gpio@vger.kernel.org,  op-tee@lists.trustedfirmware.org,
 linux-mediatek@lists.infradead.org,  xen-devel@lists.xenproject.org,
 nouveau@lists.freedesktop.org,  linux-hams@vger.kernel.org,
 ceph-devel@vger.kernel.org,  virtualization@lists.linux-foundation.org, 
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org, 
 x86@kernel.org, linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com, 
 linux-mm@kvack.org, netdev@vger.kernel.org, 
 linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-sctp@vger.kernel.org, 
 linux-usb@vger.kernel.org, netfilter-devel@vger.kernel.org, 
 linux-crypto@vger.kernel.org, patches@opensource.cirrus.com, 
 linux-integrity@vger.kernel.org, target-devel@vger.kernel.org, 
 linux-hardening@vger.kernel.org, Jonathan Cameron
 <Jonathan.Cameron@huawei.com>,  Greg KH <gregkh@linuxfoundation.org>
Date: Mon, 23 Nov 2020 08:31:30 -0800
In-Reply-To: <20201123130348.GA3119@embeddedor>
References: <cover.1605896059.git.gustavoars@kernel.org>
	 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011201129.B13FDB3C@keescook>
	 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
	 <202011220816.8B6591A@keescook>
	 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
	 <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
	 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
	 <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com>
	 <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com>
	 <20201123130348.GA3119@embeddedor>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=taYTQdLW;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=taYTQdLW;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
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

On Mon, 2020-11-23 at 07:03 -0600, Gustavo A. R. Silva wrote:
> On Sun, Nov 22, 2020 at 11:53:55AM -0800, James Bottomley wrote:
> > On Sun, 2020-11-22 at 11:22 -0800, Joe Perches wrote:
> > > On Sun, 2020-11-22 at 11:12 -0800, James Bottomley wrote:
> > > > On Sun, 2020-11-22 at 10:25 -0800, Joe Perches wrote:
> > > > > On Sun, 2020-11-22 at 10:21 -0800, James Bottomley wrote:
> > > > > > Please tell me our reward for all this effort isn't a
> > > > > > single missing error print.
> > > > > 
> > > > > There were quite literally dozens of logical defects found
> > > > > by the fallthrough additions.  Very few were logging only.
> > > > 
> > > > So can you give us the best examples (or indeed all of them if
> > > > someone is keeping score)?  hopefully this isn't a US election
> > > > situation ...
> > > 
> > > Gustavo?  Are you running for congress now?
> > > 
> > > https://lwn.net/Articles/794944/
> > 
> > That's 21 reported fixes of which about 50% seem to produce no
> > change in code behaviour at all, a quarter seem to have no user
> > visible effect with the remaining quarter producing unexpected
> > errors on obscure configuration parameters, which is why no-one
> > really noticed them before.
> 
> The really important point here is the number of bugs this has
> prevented and will prevent in the future. See an example of this,
> below:
> 
> https://lore.kernel.org/linux-iio/20190813135802.GB27392@kroah.com/

I think this falls into the same category as the other six bugs: it
changes the output/input for parameters but no-one has really noticed,
usually because the command is obscure or the bias effect is minor.

> This work is still relevant, even if the total number of issues/bugs
> we find in the process is zero (which is not the case).

Really, no ... something which produces no improvement has no value at
all ... we really shouldn't be wasting maintainer time with it because
it has a cost to merge.  I'm not sure we understand where the balance
lies in value vs cost to merge but I am confident in the zero value
case.

> "The sucky thing about doing hard work to deploy hardening is that
> the result is totally invisible by definition (things not happening)
> [..]"
> - Dmitry Vyukov

Really, no.  Something that can't be measured at all doesn't exist.

And actually hardening is one of those things you can measure (which I
do have to admit isn't true for everything in the security space) ...
it's number of exploitable bugs found before you did it vs number of
exploitable bugs found after you did it.  Usually hardening eliminates
a class of bug, so the way I've measured hardening before is to go
through the CVE list for the last couple of years for product X, find
all the bugs that are of the class we're looking to eliminate and say
if we had hardened X against this class of bug we'd have eliminated Y%
of the exploits.  It can be quite impressive if Y is a suitably big
number.

James


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8f5611bb015e044fa1c0a48147293923c2d904e4.camel%40HansenPartnership.com.
