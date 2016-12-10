package com.leolian.nettty5.x;

import com.leolian.nettty5.x.coder.MyEncoder;

import io.netty.channel.ChannelInitializer;
import io.netty.channel.socket.SocketChannel;
import io.netty.handler.codec.DelimiterBasedFrameDecoder;
import io.netty.handler.codec.Delimiters;
import io.netty.handler.codec.string.StringDecoder;

public class DiscardClientInitializer extends ChannelInitializer<SocketChannel> {

	@Override
	protected void initChannel(SocketChannel ch) throws Exception {
		ch.pipeline().addLast(new DelimiterBasedFrameDecoder(Integer.MAX_VALUE, Delimiters.lineDelimiter()[0]));
		ch.pipeline().addLast(new StringDecoder());
		ch.pipeline().addLast(new MyEncoder());
		ch.pipeline().addLast(new DiscardClientHandler());
	}

}
