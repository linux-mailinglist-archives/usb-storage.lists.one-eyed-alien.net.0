Return-Path: <usb-storage+bncBD4ONGFER4PBBQOH332QKGQEIPBHKJA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 403251CC755
	for <lists+usb-storage@lfdr.de>; Sun, 10 May 2020 08:48:35 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id t22sf6038837pfe.3
        for <lists+usb-storage@lfdr.de>; Sat, 09 May 2020 23:48:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589093314; cv=pass;
        d=google.com; s=arc-20160816;
        b=mVdeF8GCjCWrHFMwSzD2DEEYkw+GlG/vci2GzlDIbaorGPvhQyQbCPAUQ27dQLT2Bs
         0sCPP7aKOnUf21QwFH6/YrK6jPUkfJkbl9m1OZeKwTUEth8FekFwznjbJzvNRnNxweQG
         0vg2I8r4C1/K3WZ4VEFRnNzTusr3qc+hQ3UC0UQ75pqzp/LizIeKCQKyJZbQvbp2xTq/
         mB10Vvw7VgeOS6qIiH+L/lbRGh9i8BJW4fpvxrGTokqi+Wp6J/3ar9ZLYmWvbWYvG6YJ
         Ft6StgfhZd0TFH1l5hq4hULqIK2lnuDux9RHa3OIWzd1AbmjYkCiDiJQERgxHtj70pbh
         p6uA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=YB0GL9q96AhTJMt3hKe3RDq0mLklAIbXcIA3AIPsrdg=;
        b=jXeg247lM0IKiNbVwJ8mfMsX0lbTEv22R2rdLdswqPOidDMmjT/UUdBNL2hZapB0B3
         XPbBE+tkMxpVIYjOJfhgagbhir5wOIAUsEG2R925BD2rWZqWg+WOh4U1l/Dr3XpAqgEy
         S0S5iuRkNPNuJLxN9YEcbjKCc7JOrDPspiuKs32NYXCgADBW7gYe3Jo2N3ZOjaFfNhBA
         WCfKKCD8E8C5/I1bwOa7MbRbyug386qBKYgqxkrGZBj/EZB97Q2PMG9OcfSHBl+3FwXr
         G8GwMeA5amRT3fl5EKfYsGPAgdPXKEOh7mx+oFgKvFe5IBCGOy1/xB3bDprQhq4lK1rG
         er7w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=byOnXGnf;
       spf=pass (google.com: domain of dioput12@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=dioput12@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YB0GL9q96AhTJMt3hKe3RDq0mLklAIbXcIA3AIPsrdg=;
        b=ay/RMA6zb4Ft21SvHLXcrJLJWmZt7v+VnTZYRcBHTgVnTJPqhyc6UFj8M3U7GEesGP
         1OCsysRQRb8i1hFVzawN5AmEQ1xlmmbzPSj+y5XcxPEM2qxbAxe4ZS8pizv5jGhaZaIj
         lhJiAub3eA8dCP4419dtD+27p+xEYHfhCyR88=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YB0GL9q96AhTJMt3hKe3RDq0mLklAIbXcIA3AIPsrdg=;
        b=PT0qXjOuHJ3IqO3qQrzM27F5vzKR9cI++t1kGYwUfrQJlNQ5mGS/6Fo5jEE8pwEIvR
         +qH4gJY/VegGG+8b2LhF4DFtDof5S3li+BajaSECpsspewWIv0T1RiUDmagwtND+DN2g
         TDo0EJedHrb7+J23bsi4E+MRq4MiDAdsBOySyGvfFcIO5r2Zcayo0EIsoq7suQfy4o50
         P4sgnLdX125Sjr8Zt04fw6LxOLeY0isTPnN2tHtt020I98+QfBNyzkFMQqJY8bHIFh2y
         RE3FrcA1NwZtFBm7DqE4+0GWSDCr4Kwq/BeRshlsIP0Un2JQjqFoRSBlAlobuVjFuhXK
         q+Pg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AGi0PubhYQLiahVhoZBzcJ7XHtj+lZ/bEMaOhIDSzdZiKsnzMUUM2em/
	DWfMAZDeH4ayfttRBoYyPr7CfA==
X-Google-Smtp-Source: APiQypKNMWQ69taIQl+XxwTK+mZG1oOEcWN5BpYNRcl08TaWMjJI7njXfIsgbnmkszf1FXZcyiFhnA==
X-Received: by 2002:aa7:808e:: with SMTP id v14mr11346827pff.168.1589093313792;
        Sat, 09 May 2020 23:48:33 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:7283:: with SMTP id d3ls649599pll.3.gmail; Sat, 09
 May 2020 23:48:33 -0700 (PDT)
X-Received: by 2002:a17:90a:f98b:: with SMTP id cq11mr14968663pjb.193.1589093313161;
        Sat, 09 May 2020 23:48:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589093313; cv=none;
        d=google.com; s=arc-20160816;
        b=eREHf72BYNAdtd37gHMw3KIKeonSq8XGXmfzjVSp/ZeJtSe851K0vxWg1Y+MIjQJ/a
         xeAsIiD1iI5HJvrD90QEmAExJXYhWANbI+wjhLWpixmCPZcZgW7C+YL7v39cfFqUoTJl
         9NGq/P5VG1S4GQE0wY4moYWGqi0juwATDGipvV/k6GV5MDrKQMkGkPUcM6Ha3s5r94q9
         82slwWZkwyAim1c8obDrEQlfxV5Yie1qJxiyR+3f17j4GA2aE+ER+VtPfq0RSbgDosnj
         053QpX6Ym9Z5oYnjL22re99jhosWFYahSna1k1d38EyDpHyfRlbpmaRgxcX3BwATu866
         kXTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=l/8M9WGtxo6PbsxhSHfbtuvDOM6UKdX+q+/zdI2w/Dw=;
        b=hqwLSyOQ9LzzpZF+TjY549fqT80zT1R3VsfQFiCZp8yjvU0MMkfbDy4P1Ro0fTb1cf
         oqWSsiJcRWBmO68vFC+LzGIF3i+X09cG6RFwp4Y4tJYWpBe5hQdneWwrxkdlostmcvMG
         HCu18hGbNRD6xpvmOe+TYoqmwVV3IRZb2JeRZNRb+PDm1yxUyKukj6PZnMPQe7S26/Y8
         rHpIpRZR6Oa+xjrkNqVnENnaWOFQUmgH31aEPHYDI1gQY0P3rLZfE1Ybr5BYeRuUpUzr
         iizYbn1JVYMO8ifm4M4o/JuQVLVJ0AFX19G31JrtMe//eGW3U4EbPrgbDviMdlm4jlbm
         AKiw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=byOnXGnf;
       spf=pass (google.com: domain of dioput12@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=dioput12@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id w16sor11149418pja.18.2020.05.09.23.48.33
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 09 May 2020 23:48:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of dioput12@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:90a:fb4e:: with SMTP id iq14mr15875216pjb.146.1589093312825;
        Sat, 09 May 2020 23:48:32 -0700 (PDT)
Received: from ASMDT.1 ([114.125.231.97])
        by smtp.gmail.com with ESMTPSA id z15sm6472198pjt.20.2020.05.09.23.48.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 May 2020 23:48:32 -0700 (PDT)
Subject: [usb-storage] Re: USB Attached SCSI breakage due no udev involvement
To: Greg KH <gregkh@linuxfoundation.org>
Cc: oneukum@suse.com, linux-usb@vger.kernel.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, stern@rowland.harvard.edu,
 linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, stern@rowland.harvard.edu,
 linux-kernel@vger.kernel.org
References: <CAOyCV0zW_20Jq6Rrb9=fhZQAHeqMMs_oHBJdTVt8Nqje0Zoeig@mail.gmail.com>
 <20200510054717.GA3365021@kroah.com>
From: Dio Putra <dioput12@gmail.com>
Message-ID: <1f9c0b30-f440-de43-366f-28ccba6a22e2@gmail.com>
Date: Sun, 10 May 2020 13:48:24 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200510054717.GA3365021@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: dioput12@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=byOnXGnf;       spf=pass
 (google.com: domain of dioput12@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=dioput12@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 5/10/20 12:47 PM, Greg KH wrote:
> On Sun, May 10, 2020 at 09:55:57AM +0700, Dio Putra wrote:
>> Hi, it's first time for me to report user-space breakage in here, so
>> i'm begging your pardon.
>>
>> I want to report that Linux 5.4 breaking my USB mount workflow due
>> udevadm monitor report here (I'm using vanilla kernel 5.4.39 on
>> Slackware64 Current and vanilla kernel 4.4.221 on Slackware64 14.2):
>=20
> <snip>
>=20
> Sorry, but what actually changed that you can see in the logs?
Sorry, what do you mean? The dmesg log or the kernel changelogs?

>=20
> What functionality broke?  What used to work that no longer does work?
>=20
Yes, it supposed that just work and kernel could talk with udev, not just h=
andled by the kernel.

Here's my personal conclusion:

[Slackware64-Current linux-5.4.39]$ sudo strace -p 2417
strace: Process 2417 attached
write(1, "KERNEL[672.150926] remove   /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0, nl_groups=3D0x0=
00001}, msg_namelen=3D128->12, msg_iov=3D[{iov_base=3D"remove@/devices/pci0=
000:00/0000:"..., iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_le=
n=3D28, cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{=
pid=3D0, uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 2=
69
write(1, "KERNEL[672.151622] remove   /dev"..., 122) =3D 122
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0, nl_groups=3D0x0=
00001}, msg_namelen=3D128->12, msg_iov=3D[{iov_base=3D"remove@/devices/pci0=
000:00/0000:"..., iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_le=
n=3D28, cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{=
pid=3D0, uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 2=
55
write(1, "KERNEL[672.152396] remove   /dev"..., 138) =3D 138
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name=3D{sa_family=3DAF_NETLINK, nl_pid=3D0, nl_groups=3D0x0=
00001}, msg_namelen=3D128->12, msg_iov=3D[{iov_base=3D"remove@/devices/virt=
ual/bdi/11:0"..., iov_len=3D8192}], msg_iovlen=3D1, msg_control=3D[{cmsg_le=
n=3D28, cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, cmsg_data=3D{=
pid=3D0, uid=3D0, gid=3D0}}], msg_controllen=3D32, msg_flags=3D0}, 0) =3D 1=
07
write(1, "KERNEL[672.153191] remove   /dev"..., 60) =3D 60
...<snip>...

"So the summary of syscall on linux-5.4.39 it's something like: write -->  =
epoll_wait --> recvmsg (direct call from kernel only, no udev dependencies =
has been called ever) --> write"

[Slackware64-14.2 linux-kernel-4.4.221] $ sudo strace -p 2102
strace: Process 2102 attached
write(1, "KERNEL[160.475104] remove   /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D598, groups=3D000=
00002}, msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\375\0\0\0\5=
w\305\345\261\2Ge"..., 8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg_l=
evel=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, {pid=3D2116, uid=3D0, gid=
=3D0}}], msg_flags=3D0}, 0) =3D 293
write(1, "UDEV  [160.476746] remove   /dev"..., 84) =3D 84
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0, groups=3D00000=
001}, msg_iov(1)=3D[{"remove@/devices/pci0000:00/0000:"..., 8192}], msg_con=
trollen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CRE=
DENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0}, 0) =3D 256
write(1, "KERNEL[160.478096] remove   /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D4, u64=3D4}}], 4, -1) =3D 1
recvmsg(4, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D598, groups=3D000=
00002}, msg_iov(1)=3D[{"libudev\0\376\355\312\376(\0\0\0(\0\0\0\26\2\0\0\5w=
\305\345'\370\365\f"..., 8192}], msg_controllen=3D32, [{cmsg_len=3D28, cmsg=
_level=3DSOL_SOCKET, cmsg_type=3DSCM_CREDENTIALS, {pid=3D2116, uid=3D0, gid=
=3D0}}], msg_flags=3D0}, 0) =3D 574
write(1, "UDEV  [160.495353] remove   /dev"..., 76) =3D 76
epoll_wait(3, [{EPOLLIN, {u32=3D5, u64=3D5}}], 4, -1) =3D 1
recvmsg(5, {msg_name(12)=3D{sa_family=3DAF_NETLINK, pid=3D0, groups=3D00000=
001}, msg_iov(1)=3D[{"add@/devices/pci0000:00/0000:00:"..., 8192}], msg_con=
trollen=3D32, [{cmsg_len=3D28, cmsg_level=3DSOL_SOCKET, cmsg_type=3DSCM_CRE=
DENTIALS, {pid=3D0, uid=3D0, gid=3D0}}], msg_flags=3D0}, 0) =3D 250
write(1, "KERNEL[161.109310] add      /dev"..., 76) =3D 76
...<snip>...

"So the summary of syscall on linux-4.4.221 it's something like: write --> =
epoll_wait --> recvmsg (libudev has been called) --> write (UDEV has been c=
alled) --> epoll_wait -> recvmsg (libudev has been called again)-> write"
 =20
> And 4.4.221 is quite different from 5.4, is that the jump that you are
> seeing breakage in, or is it in some smaller jump?
>=20
Yeah, I know it's really different between linux-4.4 and linux-5.4

> thanks,
>=20
> greg k-h
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/1f9c0b30-f440-de43-366f-28ccba6a22e2=
%40gmail.com.
